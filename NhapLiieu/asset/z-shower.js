$(document).ready(function () {
  const setting = {
    tab_title: "Tắm Tiên",
    app_title: "Hệ thống quản lý tắm nóng lạnh",
    app_sologan: "Siêu nóng, nhanh chóng, chi phí thì hợp lý!",
    het_gio: "Hết giờ phòng tắm ",
    dong_cua: "Phòng tắm đóng cửa, tất cả về thôi",
    tts_delay: 30,
    huy_delay: 120,
    time_tam: 15,
    monitor_interval: 1,
  }
  const default_setting = {};
  for (var item in setting) default_setting[item] = setting[item];

  const api = '/api.ashx';
  const mp3 = 'https://tientam.duckdns.org/mp3/';

  var dialog, data, logined = false, user_info, all_quyen;

  //--begin ck---
  function setCookie(name, value, days) {
    var expires = "";
    if (days) {
      var date = new Date();
      date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
      expires = "; expires=" + date.toUTCString();
    }
    document.cookie = name + "=" + (value || "") + expires + "; path=/";
  }
  function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0) == ' ') c = c.substring(1, c.length);
      if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
  }
  function eraseCookie(name) {
    document.cookie = name + '=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
  }
  function getLocal(name) {
    return window.localStorage.getItem(name);
  }
  function setLocal(name, value) {
    window.localStorage.setItem(name, value);
  }
  function delLocal(name) {
    localStorage.removeItem(name);
  }
  function get_store(key) {
    var value = getCookie(key);
    if (value == null || value == '' || value == undefined) {
      value = getLocal(key);
    }
    return value;
  }

  //--end ck---

  function sort_table(id, fn, pageLength_) {
    $('.jconfirm-holder').width($('.jconfirm-open').width());
    let pageLength = 10;
    if (pageLength_) pageLength = pageLength_;
    if (!fn) fn = "Export";
    $(id).DataTable({
      dom: 'Bfrtip',
      "pageLength": pageLength,
      buttons: [
        {
          extend: 'copyHtml5',
          title: fn
        },
        {
          extend: 'excelHtml5',
          title: fn
        }
      ],
      "order": [],
      "language": {
        "decimal": "",
        "emptyTable": "Không có dữ liệu",
        "info": "Hiển thị từ dòng _START_ đến dòng _END_ trong tổng số _TOTAL_ dòng",
        "infoEmpty": "Showing 0 to 0 of 0 entries",
        "infoFiltered": "(filtered from _MAX_ total entries)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Show _MENU_ entries",
        "loadingRecords": "Loading...",
        "processing": "Processing...",
        "search": "Tìm kiếm:",
        "zeroRecords": "Không tìm thấy lớp nào phù hợp",
        "paginate": {
          "first": "Trang đầu",
          "last": "Trang cuối",
          "next": "Trang sau",
          "previous": "Trang trước"
        },
        "aria": {
          "sortAscending": ": Sắp xếp tăng dần",
          "sortDescending": ": Sắp xếp giảm dần"
        }
      }
    });
    $('.jconfirm-holder').width($('.jconfirm-open').width());
  }
  function monitor(action, callback) {
    $.post(api,
      {
        action: action, //gửi đi action
      },
      function (json) {
        data = json;
        callback(json);
      }
    );
  }
  function control(action, id) {
    if (alert_not_login()) return; //khi control phải login trước
    if (user_info == null || user_info.role < 3) return;

    $.post(api,
      {
        action: action,
        id: id
      },
      function (json) {
        if (json.ok) {
          dialog.close();
          monitor('monitor', update_status);
        } else {
          toastr["warning"](json.msg);
        }
      }
    );
  }
  function move_dialog() {
    var max = 200;
    var a = $('.jconfirm-box-container');
    max = a[0].parentElement.offsetParent.offsetHeight;
    function moving(i) {
      a.css("transform", "translate(0px, -" + i + "px)");
      if (i < max / 2 - 200) {
        setTimeout(function () { moving(i + 50) }, 1);
      }
    }
    //moving(1)
  }

  function alert_not_login() {
    if (!logined) {
      $.confirm({
        animateFromElement: false,
        typeAnimated: false,
        icon: 'fa fa-clipboard-check',
        title: 'Bạn chưa đăng nhập',
        content: 'Hãy đăng nhập để điều khiển',
        type: 'red',
        closeIcon: true,
        closeIconClass: 'fa fa-close',
        columnClass: 's',
        escapeKey: 'cancel',
        buttons: {
          ok: {
            text: '<i class="fa fa-circle-check"></i> Đăng nhập luôn',
            btnClass: 'btn-blue',
            keys: ['enter', 'n'],
            action: function () {
              do_login();
            }
          },
          cancel: {
            text: '<i class="fa fa-circle-xmark"></i> Cancel',
            keys: ['esc', 'c', 'C'],
            btnClass: 'btn-red',
          }
        }
      });
      return true;
    }
    return false;
  }
  function play_nomal(id) {
    Q.clear();
    Q.enqueue({ id: id, text: setting.het_gio + ' ' + id });
  }
  function play_vip(id) {
    Q.xoa_sach();
    if (audio && gtts_playing) {
      audio.pause();
    }
    Q.enqueue({ id: id, vip: 1, text: setting.het_gio + ' ' + id });
    gtts_playing = 0;
  }
  function het_gio_all() {
    Q.xoa_sach();
    if (audio && gtts_playing) {
      audio.pause();
    }
    Q.enqueue({ id: 999, vip: 1, text: setting.dong_cua });
    gtts_playing = 0;
  }
  function draw_init(json) {
    for (var item of json.data) {
      if (item.loai == 1) {
        $('#p' + item.id).addClass('nam');
        $('#p' + item.id).prop("title", "Phòng nam " + item.id)
      } else {
        $('#p' + item.id).addClass('nu');
        $('#p' + item.id).prop("title", "Phòng nữ " + item.id)
      }
      $('#p' + item.id).data('pid', item.id);
      $('#p' + item.id).html('<div class="time">P' + item.id + '</div><div class="bot"></div>');
    }
    //$('.bot').draggable();
    $('.nam,.nu').click(function () {
      if (alert_not_login()) return; //mỗi khi click vào để điều khiển từng phòng tắm nam nữ

      if (user_info == null || user_info.role < 3) return;

      var id = $(this).data('pid');
      var tam = $(this).hasClass('tam');

      if (tam) {
        //đang có người tắm

        var dang_tam = {
          animateFromElement: false,
          typeAnimated: false,
          closeIcon: true,
          closeIconClass: 'fa fa-close',
          type: 'blue',
          columnClass: 'm',
          escapeKey: 'cancel',
          icon: 'fa fa-shower',
          title: 'Phòng&nbsp;' + id + '&nbsp;đã&nbsp;tắm&nbsp;xong?',
          content: 'Xác nhận đã tắm xong phòng ' + id + ' ??',
          buttons: {
            ok: {
              text: '<i class="fa fa-shower"></i> Tắm xong P.' + id,
              btnClass: 'btn-blue',
              keys: ['enter', 't', 'x', 'T', 'X'],
              action: function () {
                control('tam_xong', id);
                return false; //ko đóng dialog, mà đợi ok mới đóng
              }
            },
            nham: {
              btnClass: 'btn-warning',
              text: '<span title="  "><i class="fa fa-rotate-left"></i> Nhầm</span>',
              keys: ['n', 'N'],
              isHidden: true,
              isDisabled: true,
              action: function () {
                control('huy_phong', id);
                return false; //ko đóng dialog, mà đợi ok mới đóng
              }
            },
            mp3: {
              btnClass: 'btn-info',
              text: '<i class="fa fa-volume-high"></i> Loa',
              keys: ['m', 'p', '3', 'M', 'P'],
              action: function () {
                play_vip(id);
              }
            },
            cancel: {
              text: '<i class="fa fa-circle-xmark"></i> Cancel',
              btnClass: 'btn-red',
              keys: ['esc', 'c', 'C'],
              action: function () {
                dialog.close();
              }
            }
          },
          onContentReady: function () {
            move_dialog();
            for (var item of data.data) {
              if (item.id == id) {
                if (item.ss < setting.huy_delay) {
                  this.buttons.nham.show();
                  this.buttons.nham.enable();
                }
                else {
                  this.buttons.nham.hide();
                }
                break;
              }
            }
          }
        };  //hết var dang_tam

        var auto = false, nham = false;
        for (var item of data.data) {
          if (item.id == id) {
            if (item.ss < 150) nham = true;
            if (item.ss > (15 * 60)) auto = true;
            break;
          }
        }
        if (nham) {
          dang_tam.buttons.nham.isDisabled = false;
          dang_tam.buttons.nham.isHidden = false;
          dang_tam.autoClose = "nham|30000";
        } else if (auto) {
          dang_tam.autoClose = "ok|30000";
          dang_tam.buttons.ok.btnClass = "btn-blue";
        }
        dialog = $.confirm(dang_tam);
      } else {
        //phòng trống
        var phong_trong = {
          animateFromElement: false,
          typeAnimated: false,
          icon: 'fa fa-shower',
          title: 'Vào tắm Phòng ' + id + '?',
          content: 'Xác nhận vào tắm mới?',
          closeIcon: true,
          closeIconClass: 'fa fa-close',
          type: 'blue',
          escapeKey: 'cancel',
          autoClose: 'ok|30000',
          buttons: {
            ok: {
              text: '<i class="fa fa-person-booth"></i> Vào tắm P.' + id,
              btnClass: 'btn-blue',
              keys: ['enter', 'v', 't', 'V', 'T'],
              action: function () {
                control('vao_tam', id);
                return false; //ko đóng dialog
              }
            },
            mp3: {
              btnClass: 'btn-info',
              text: '<i class="fa fa-volume-high"></i> Loa',
              keys: ['m', 'p', '3', 'M', 'P'],
              action: function () {
                play_vip(id);
              }
            },
            cancel: {
              text: '<i class="fa fa-circle-xmark"></i> Cancel',
              btnClass: 'btn-red jconfirm-closeIcon',
              keys: ['esc', 'c', 'C'],
              action: function () {
                dialog.close();
              }
            }
          },
          onContentReady: function () {
            move_dialog();
          }
        };
        dialog = $.confirm(phong_trong);
      }
    })
    update_status(json);
  }
  function format(s) {
    var m, h;
    m = s >= 60 ? parseInt(s / 60) : 0;
    h = m >= 60 ? parseInt(m / 60) : 0;
    m = m % 60;
    s = s % 60;

    if (m < 10) m = '0' + m;
    if (s < 10) s = '0' + s;
    if (h > 0) {
      if (h < 10) h = '0' + h;
      return h + ':' + m + ':' + s;
    } else {
      return m + ':' + s;
    }
  }
  class Queue {
    constructor() {
      this.queue = [];
    }

    enqueue(item) {
      return this.queue.unshift(item);
    }

    dequeue() {
      return this.queue.pop();
    }

    peek() {
      return this.queue[this.length - 1];
    }

    get length() {
      return this.queue.length;
    }

    isEmpty() {
      return this.queue.length === 0;
    }

    checkExist(item_check) {
      for (var item of this.queue) {
        if (item.id == item_check.id) return true;
      }
      return false;
    }

    enqueue2(item) {
      if (!this.checkExist(item)) this.enqueue(item);
    }
    xoa_sach() {
      for (var index in this.queue) {
        this.queue.splice(index, 1);
      }
    }
    clear() {
      for (var index in this.queue) {
        var item = this.queue[index];
        if (item.vip == undefined) {
          this.queue.splice(index, 1);
        }
      }
    }
    remove(itemX) {
      if (!this.isEmpty()) {
        for (var index in this.queue) {
          var item = this.queue[index];
          if (item.id == itemX.id) {
            if (item.vip == undefined) {
              this.queue.splice(index, 1);
            }
            return;
          }
        }
      }
    }
  }
  var Q = new Queue();
  var gtts_playing = 0;               //biến đánh dấu xem có đang bận play ko
  var audio;
  function playSound(url, txt) {           //hàm này nhận 1 url audio để play
    if (gtts_playing) return;         //nếu đang bận playing thì thoát
    audio = new Audio(url);
    audio.play().then(() => {       //gọi play() và khi thực sự play thì:
      gtts_playing = 1;             //đánh dấu đang play
      toastr["info"]("Đang nói ra loa, hãy bật loa!<br>" + txt);
    }).catch(e => {
      console.log(e);
      toastr["warning"]("Hãy bật loa và CLICK vào trình duyệt để cho phép nói ra loa nhé");
    })                           //hết hàm play
    audio.addEventListener("ended", //đăng ký sự kiện play xong thì:
      function () {                 //play xong thì hàm này chạy
        //bỏ đánh dấu bận => hết bận
        setTimeout(function () { gtts_playing = 0; }, setting.tts_delay * 1000);//nghỉ 3 giây mới nói tiếp
      });
  }//hết hàm playSound
  function play_tts(txt) {              //nhận txt là chuỗi cần tts
    $.post(mp3,  //gọi API tạo tts
      { text: txt },                     //truyền lên chuỗi cần tts
      function (json) {             //nhận về tên file mp3
        var tts = JSON.parse(json);
        console.log(['play audio', Q, mp3 + tts.fn, txt]);
        playSound(mp3 + tts.fn, txt);  //play url=file này trong thư mục mp3
      });//end ajax post
  }
  function update_status(json) {
    if (json.ok) {
      var het_gio = [];
      for (var item of json.data) {
        if (item.tt == 1) {
          $('#p' + item.id).addClass('tam');
          $('#p' + item.id + ' .time').html('P' + item.id + ': ' + format(item.ss));
          if (item.ss > (setting.time_tam * 60)) {
            $('#p' + item.id).addClass('over');
            het_gio.push(item.id);
          } else {
            $('#p' + item.id).removeClass('over');
          }
        } else {
          $('#p' + item.id).removeClass('tam').removeClass('over');
          $('#p' + item.id + ' .time').html('P' + item.id);
          Q.remove(item);
        }
      }

      if (het_gio.length > 0) {
        var id_tts = het_gio.join(', ');
        play_nomal(id_tts);
      }
    } else {
      toastr["warning"](json.msg); //xem log khi có lỗi
    }
  }

  function thong_ke_chi_tiet(date) {
    $.post(api,
      {
        action: 'report_detail',
        date: date,
      },
      function (json) {
        if (json.ok) {
          var content = '<table id="thong-ke-chi-tiet" class="table table-hover table-striped">';
          content += '<thead><tr class="table-info fw-bold">' +
            '<th align=center>stt</th>' +
            '<th align=center>Phòng</th>' +
            '<th align=center>Giờ vào</th>' +
            '<th align=center>Giờ ra</th>' +
            '<th align=center>Số phút</th>' +
            '<th align=center>Note</th>' +
            '</tr></thead><tbody>';
          var stt = 0;
          for (var item of json.data) {
            var t1 = item.tin.split(' '); if (t1.length > 1) t1 = t1[1];
            var t2 = item.tout.split(' '); if (t2.length > 1) t2 = t2[1]; else t2 = '(đang tắm)';
            var nhanh = ['bg-info', 'Tắm siêu nhanh'];
            if (item.use > 10 && item.use <= 15) nhanh = ['bg-primary', 'Tắm nhanh'];
            if (item.use > 15 && item.use <= 20) nhanh = ['bg-warning', 'Tắm hơi chậm'];
            if (item.use > 20) nhanh = ['bg-danger', 'Tắm rất chậm'];
            content += '<tr class="' + (item.huy ? 'table-danger' : '') + '">' +
              '<td align=center>' + (++stt) + '</td>' +
              '<td align=center><span class="badge rounded-pill ' + (item.loai ? 'bg-primary' : 'bg-info') + '">' + (item.loai ? 'Nam' : 'Nữ') + ' ' + item.pid + '</span></td>' +
              '<td align=center>' + t1 + '</td>' +
              '<td align=center>' + t2 + '</td>' +
              '<td align=center><span class="badge rounded-pill ' + nhanh[0] + '" title="' + nhanh[1] + '">' + item.use + '</span></td>' +
              '<td align=center>' + (item.huy ? '<span class="badge rounded-pill bg-warning">Hủy</span>' : nhanh[1]) + '</td>' +
              '</tr>'
          }
          content += '</tbody></table>';
          $.confirm({
            animateFromElement: false,
            typeAnimated: false,
            icon: 'fa fa-calendar-days',
            title: 'Thống kê chi tiết ngày ' + date + '',
            content: content,
            closeIcon: true,
            closeIconClass: 'fa fa-close',
            columnClass: 'l',
            type: 'purple',
            escapeKey: 'ok',
            buttons: {
              ok: {
                text: '<i class="fa fa-circle-xmark"></i> Đóng lại',
                btnClass: 'btn-info',
              }
            },
            onContentReady: function () {
              sort_table('#thong-ke-chi-tiet', 'Thống kê chi tiết ngày ' + date, 10);
            }
          });
        } else {
          bao_loi(json); //báo lỗi khi thong_ke_tong_hop
        }
      }
    );
  }
  function thong_ke() {
    if (alert_not_login()) return; //phải login trước khi thống kê
    if (not_allow()) return;//khi thống kê thì phải có quyền
    $.post(api,
      {
        action: 'thong_ke',
      },
      function (json) {
        if (json.ok) {
          var content = '<table id="thong-ke-tong-hop" class="table table-hover" title="Click vào mỗi dòng để xem chi tiết từng ngày">';
          content += '<thead>' +
            '<tr class="table-info fw-bold">' +
            '<th align=center>STT</th>' +
            '<th align=center>Ngày</th>' +
            '<th align=center>Số lượt tắm</th>' +
            '<th align=center>Số lượt hủy</th>' +
            '</tr>' +
            '</thead>' +
            '<tbody>';
          var tam = 0, huy = 0, stt = 0;
          for (var item of json.data) {
            content += '<tr class="btn-report-detail" data-date="' + item.date + '"><td align=center>' + (++stt) + '</td><td align=center>' + item.date + '</td><td align=center><span class="badge rounded-pill bg-primary">' + item.tam + '</span></td><td align=center><span class="badge rounded-pill bg-danger">' + item.huy + '</span></td></tr>';
            tam += item.tam;
            huy += item.huy;
          }
          content += '<tr class="table-warning fw-bold"><td align=center>' + (++stt) + '</td><td align=right>Tổng:</td><td align=center><span class="badge rounded-pill bg-primary">' + tam + '</span></td><td align=center><span class="badge rounded-pill bg-danger">' + huy + '</span></td></tr>';
          content += '</tbody></table>';
          $.confirm({
            animateFromElement: false,
            typeAnimated: false,
            icon: 'fa fa-flag-checkered',
            title: 'Thống kê tổng hợp',
            content: content,
            closeIcon: true,
            closeIconClass: 'fa fa-close',
            type: 'purple',
            escapeKey: 'ok',
            columnClass: 'm',
            buttons: {
              ok: {
                text: '<i class="fa fa-circle-xmark"></i> Đóng lại',
                btnClass: 'btn-info',
              }
            },
            onContentReady: function () {
              move_dialog();
              $('.btn-report-detail').click(function () {
                var date = $(this).data('date');
                thong_ke_chi_tiet(date);
              });
              sort_table('#thong-ke-tong-hop', 'Thống kê tổng hợp', 10);
            }
          });
        } else {
          bao_loi(json); //báo lỗi khi thong_ke
        }
      }
    );
  }
  function add_new_user() {
    var all_option_roles = '';
    for (var item of all_quyen) {
      all_option_roles += '<option value="' + item.role + '">' + item.rolename + '</option>'
    }
    var html_4input = `
      <div class="mb-3 mt-3">
        <label for="nhap-uid" class="form-label">uid:</label>
        <input type="text" class="form-control" id="nhap-uid" placeholder="Nhập uid">
      </div>
      <div class="mb-3 mt-3">
        <label for="nhap-pwd" class="form-label">Password:</label>
        <input type="password" class="form-control" id="nhap-pwd" placeholder="Nhập Password">
      </div>
      <div class="mb-3 mt-3">
        <label for="nhap-fullname" class="form-label">Fullname:</label>
        <input type="text" class="form-control" id="nhap-fullname" placeholder="Nhập Fullname">
      </div>
      <div class="mb-3 mt-3">
        <label for="nhap-role" class="form-label">Role:</label>
        <select class="form-select" id="nhap-role" >`+ all_option_roles + `</select>
    </div>
    `;
    var dialog_add = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-user-plus',
      title: 'Add new user',
      content: html_4input,
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'blue',
      columnClass: 's',
      escapeKey: 'cancel',
      buttons: {
        ok: {
          text: '<i class="fa fa-user-plus"></i> Thêm user',
          btnClass: 'btn-blue',
          action: function () {
            //lấy đc 4 thông tin trên form
            //gửi đi
            //tùy theo phản hồi: OK=1 => tải lại ds user
            var uid = $('#nhap-uid').val();
            var pwd = $('#nhap-pwd').val();
            var fullname = $('#nhap-fullname').val();
            var role = $('#nhap-role').val();
            $.post(api,
              {
                action: 'add_user',
                adduid: uid,
                pw: pwd,
                name: fullname,
                role: role
              },
              function (json) {
                if (json.ok) {
                  list_user();  //sau khi add_user thì tải lại
                  dialog_add.close(); //đóng thằng dialog_add lại
                } else {
                  bao_loi(json); //báo lỗi khi add_user
                }
              });
            return false; // ko đóng
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      }
    });
  }
  function set_pw(uid) {
    //set pw: ko tự set pw mà phải change_pw
    let uid_logined = get_store('uid');
    if (uid_logined == uid) {
      do_change_pw();
      return;
    }
    //người khác thì set ok
    //cần 1 form nhập pw mới, (ko cần pw cũ)
    var html_input = `
      <div class="mb-3 mt-3">
        <label for="set-uid" class="form-label">uid:</label>
        <input type="text" class="form-control" id="set-uid" value="`+ uid + `" disabled>
      </div>
      <div class="mb-3 mt-3">
        <label for="set-pwd" class="form-label">Password mới:</label>
        <input type="password" class="form-control" id="set-pwd" placeholder="Nhập Password">
      </div>
    `;
    var dialog_set_pw = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-key',
      title: 'Set password mới cho user',
      content: html_input,
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'red',
      columnClass: 's',
      escapeKey: 'cancel',
      buttons: {
        ok: {
          text: '<i class="fa fa-key"></i> Set password',
          btnClass: 'btn-blue',
          action: function () {
            //lấy đc 1 thông tin trên form
            //gửi đi
            //tùy theo phản hồi: OK=1 => tải lại ds user
            var pwd = $('#set-pwd').val();
            $.post(api,
              {
                action: 'set_pw',
                edit_uid: uid,
                edit_pwd: pwd,
              },
              function (json) {
                if (json.ok) {
                  bao_ok(json);
                  dialog_set_pw.close(); //đóng thằng dialog_set_pw lại
                } else {
                  bao_loi(json); //báo lỗi khi set_pw
                }
              });
            return false; // ko đóng
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      }
    });
  }
  function delete_user(uid) {
    let uid_logined = get_store('uid');
    if (uid_logined == uid) {
      bao_loi({ ok: 0, msg: "Không tự xóa mình được!" }); //báo lỗi khi tự xóa
      return;
    }
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-circle-question',
      title: 'Xác nhận xóa?',
      content: 'Bạn có chắc muốn xóa user <b>' + uid + '</b> ?',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'red',
      columnClass: 's',
      escapeKey: 'cancel',
      autoClose: 'cancel|15000',
      buttons: {
        ok: {
          text: '<i class="fa fa-circle-check"></i> ok Xóa đi',
          btnClass: 'btn-blue',
          keys: ['enter', 'x', 'X'],
          action: function () {
            //gửi đi api: y/c xóa
            $.post(api, { action: 'delete_user', deluid: uid }, function (json) {
              if (json.ok) {
                list_user(); //sau khi delete_user thì tải lại
              } else {
                bao_loi(json); //báo lỗi khi delete_user
              }
            });
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc', 'c', 'C'],
          btnClass: 'btn-red',
        }
      }
    });
  }

  function list_user() {
    $.post(api, { action: 'list_user' }, function (json) {
      if (json.ok) {
        all_quyen = json.quyen;
        var s = '<h4>Danh sách user</h4>' +
          '<table class="table table-hover"><thead><tr class="table-info"><th>STT</th><th>uid</th><th>fullname</th><th>Role</th><th>Last login</th><th>Action</th></tr></thead><tbody>';
        var stt = 0;
        for (var item of json.data) {
          s += '<tr>';
          s += '<td align="center">' + (++stt) + '</td>';
          s += '<td>' + item.uid + '</td>';
          s += '<td>' + item.fullname + '</td>';
          s += '<td>' + item.rolename + '</td>';
          s += '<td>' + item.last + '</td>';
          var action = '<button class="btn btn-sm btn-warning btn-action-user" data-action="set_pw" data-uid="' + item.uid + '" title="Set password"><i class="fa fa-key"></i></button>';
          action += ' <button class="btn btn-sm btn-danger btn-action-user" data-action="delete_user" data-uid="' + item.uid + '" title="Delete user"><i class="fa fa-user-xmark"></i></button>';
          s += '<td>' + action + '</td></tr>';
          s += '</tr>';
        }
        s += '</tbody></table>';
        $('#list-user').html(s);
        $('.btn-action-user').click(function () {
          var action = $(this).data('action');
          var uid = $(this).data('uid');
          if (action == 'delete_user') {
            delete_user(uid);
          } else if (action == 'set_pw') {
            set_pw(uid);
          }
        });
      } else {
        bao_loi(json); //báo lỗi khi list_user
      }
    });//end get list_user
  }

  function do_change_pw() {
    //show tên , uid : ko cần nhập
    //nhập lại pwd, và pwd mới (pwd2)
    //gửi đi: action='do_change_pw',  uid (cookie  tự gửi), pwd, pwd2
    let uid = get_store('uid');
    var content = `
      <div class="mb-3 mt-3">
        <label for="old-uid" class="form-label">uid:</label>
        <input type="text" class="form-control" id="old-uid" value="`+ uid + `" disabled>
      </div>
      <div class="mb-3 mt-3">
        <label for="old-pwd" class="form-label">Password cũ:</label>
        <input type="password" class="form-control" id="old-pwd" placeholder="Nhập Password cũ">
      </div>
      <div class="mb-3 mt-3">
        <label for="new-pwd" class="form-label">Password mới:</label>
        <input type="password" class="form-control" id="new-pwd" placeholder="Nhập Password mới">
      </div>
    `;
    var dialog_change_pw = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-key',
      title: 'Đổi mật khẩu',
      content: content,
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'red',
      columnClass: 's',
      escapeKey: 'cancel',
      buttons: {
        ok: {
          text: '<i class="fa fa-key"></i> Đổi mật khẩu',
          btnClass: 'btn-blue',
          action: function () {
            var pwd = $('#old-pwd').val();
            var pwd2 = $('#new-pwd').val();
            $.post(api, {
              action: 'do_change_pw',
              pwd: pwd,
              pwd2: pwd2,
            }, function (json) {
              if (json.ok) {
                //cần lưu cookie mới
                setLocal("ck", json.cookie)
                setCookie('ck', json.cookie, 30);
                if (json.msg != null && json.msg != "")
                  toastr["info"](json.msg)
                dialog_change_pw.close();
              } else {
                bao_loi(json) //báo lỗi khi do_change_pw
              }
            });
            return false;//ko đóng
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          btnClass: 'btn-red',
        }
      }
    });
  }

  function bao_ok(json) {
    if (json.ok)
      if (json.msg != null && json.msg != '') {
        toastr["info"]("<b>Thông báo</b><br>" + json.msg)
        $.confirm({
          animateFromElement: false,
          typeAnimated: false,
          icon: 'fa fa-circle-check',
          title: 'Thông báo',
          content: json.msg,
          type: 'green',
          autoClose: "ok|3000",
          buttons: {
            ok: {
              text: '<i class="fa fa-circle-check"></i> OK',
              btnClass: 'btn-danger',
            }
          }
        });
      }
  }
  function bao_loi(json) {
    if (!json.ok)
      if (json.msg != null && json.msg != '') {
        toastr["warning"]("<b>Thông báo lỗi</b><br>" + json.msg)
        $.confirm({
          animateFromElement: false,
          typeAnimated: false,
          icon: 'fa fa-warning',
          title: 'Thông báo lỗi',
          content: json.msg,
          type: 'red',
          autoClose: "ok|3000",
          buttons: {
            ok: {
              text: '<i class="fa fa-circle-check"></i> OK',
              btnClass: 'btn-danger',
            }
          }
        });
      }
  }

  function not_allow() {
    if (!(user_info.role == 100 || user_info.role == 3))//nếu ko đủ quyền
    {
      $.confirm({
        animateFromElement: false,
        typeAnimated: false,
        icon: 'fa fa-clipboard-check',
        title: 'Bạn không đủ quyền',
        content: 'Chức năng chỉ dành cho Admin',
        type: 'red',
        closeIcon: true,
        closeIconClass: 'fa fa-close',
        columnClass: 's',
        escapeKey: 'cancel',
        buttons: {
          cancel: {
            text: '<i class="fa fa-circle-xmark"></i> Cancel',
            keys: ['esc', 'c', 'C'],
            btnClass: 'btn-red',
          }
        }
      });
      return true;
    }
    return false;
  }

  function show_edit_setting(item) {
    if (alert_not_login()) return;// khi vào admin_setting    
    if (not_allow()) return; //admin_setting chi danh cho admin
    var loai = 'number';
    switch (item.key) {
      case 'time_tam':
      case 'huy_delay':
      case 'tts_delay':
      case 'monitor_interval':
        loai = 'number';
        break;
      default:
        loai = 'text';
        break;
    }
    var content = `
      <div class="mb-3 mt-3">
        <label for="set-key" class="form-label">Key:</label>
        <input type="text" class="form-control" id="set-key" value="`+ item.key + `" disabled>
      </div>
      <div class="mb-3 mt-3">
        <label for="set-value" class="form-label">`+ item.note + `:</label>
        <input type="`+ loai + `" class="form-control" id="set-value" placeholder="giá trị cũ: ` + item.value + `" value="` + item.value + `">
      </div>
    `;

    var dialog_edit_setting = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-pen-to-square',
      title: 'Thay đổi: ' + item.key,
      content: content,
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'blue',
      columnClass: 'm',
      escapeKey: 'cancel',
      buttons: {
        ok: {
          text: '<i class="fa fa-check"></i> Cập nhật',
          btnClass: 'btn-primary',
          keys: ['enter'],
          action: function () {
            var new_value = $('#set-value').val();
            if (item.value == new_value) {
              //giống thì ko cần cập nhật
              dialog_edit_setting.close();
            } else {
              //khác thì mới gửi
              $.post(api,
                {
                  action: 'edit_setting',
                  key: item.key,
                  value: $('#set-value').val()
                },
                function (json) {
                  if (json.ok) {
                    dialog_edit_setting.close();
                    list_setting();
                  }
                });
            }
            return false; //ko đóng dialog_edit_setting ngay
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      },
      onContentReady: function () {

      }
    });
  }
  function apply_setting(json) {
    if (json.ok) {
      for (var item of json.data) {
        switch (item.key) {
          case 'tts_delay':
            setting.tts_delay = parseInt(item.value);
            break;
          case 'huy_delay':
            setting.huy_delay = parseInt(item.value);
            break;
          case 'time_tam':
            setting.time_tam = parseInt(item.value);
            break;
          case 'monitor_interval':
            setting.monitor_interval = parseInt(item.value);
            break;
          case 'auto_play_interval':
            setting.auto_play_interval = parseInt(item.value);
            break;
          case 'het_gio':
            setting.het_gio = item.value;
            break;
          case 'dong_cua':
            setting.dong_cua = item.value;
            break;
          case 'tab_title':
            document.title = item.value;
            break;
          case 'app_sologan':
            $('#app-sologan').html(item.value);
            break;
          case 'app_title':
            $('#app-title').html(item.value);
            break;
        }
      }
    }
  }
  function get_list_setting() {
    $.post(api,
      {
        action: 'list_setting'
      },
      function (json) {
        if (json.ok) {
          apply_setting(json);
        }
      });
  }
  function list_setting() {
    if (alert_not_login()) return; // list_setting phai login truoc
    if (not_allow()) return; //list_setting chi danh cho admin
    $.post(api,
      {
        action: 'list_setting'
      },
      function (json) {
        var content = '';
        if (json.ok) {
          apply_setting(json);
          content = '<table id="thong-ke-chi-tiet" class="table table-hover table-striped">';
          content += '<thead><tr class="table-info fw-bold">' +
            '<th align=center>stt</th>' +
            '<th align=center>Key</th>' +
            '<th align=right>Description</th>' +
            '<th>Value</th>' +
            '<th align=center>Last change</th>' +
            '<th align=center>Change</th>' +
            '</tr></thead><tbody>';
          var stt = 0;
          for (var item of json.data) {
            content += '<tr>' +
              '<td align=center>' + (++stt) + '</td>' +
              '<td align=center>' + item.key + '</span></td>' +
              '<td align=right>' + item.note + ':</span></td>' +
              '<td><span class="badge rounded-pill bg-primary btn-change-setting" data-key="' + item.key + '">' + item.value + '</span></span></td>' +
              '<td align=center>' + item.time + '</span></td>' +
              '<td align=center><button data-key="' + item.key + '" class="btn btn-sm btn-info btn-change-setting" title="Change ' + item.note + '"><i class="fa fa-pen-to-square"></i></button></span></td>' +
              '</tr>'
          }
          content += '</tbody></table>';
        } else {
          content = 'Không có dữ liệu';
        }
        $('#list_setting').html(content);
        $('.btn-change-setting').click(function () {
          var key = $(this).data('key');
          for (var item of json.data) {
            if (item.key == key) {
              show_edit_setting(item);
              break;
            }
          }
        });
      });
  }
  function admin_setting() {
    if (alert_not_login()) return;// khi vào admin_setting
    if (not_allow()) return; //admin_setting chi danh cho admin
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-gear',
      title: 'Cài đặt các thông số',
      content: '<div id="list_setting"></div>',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'blue',
      columnClass: 'xl',
      escapeKey: 'cancel',
      buttons: {
        reset_default: {
          text: '<i class="fa fa-circle-radiation"></i> Reset Default',
          btnClass: 'btn-warning',
          isHidden: true,
          action: function () {
            var wait = 0;
            for (var key in default_setting) {
              var value = default_setting[key];
              //var value_new = setting[key];
              //if (value != value_new)
              {
                wait++;
                $.post(api,
                  {
                    action: 'edit_setting',
                    key: key,
                    value: value,
                  },
                  function (json) {
                    if (json.ok) {
                      toastr["info"]('[' + wait + '] ' + json.msg);
                    }
                    wait--;
                    if (wait == 0) list_setting();
                  });
              }
            }
            setTimeout(function () {
              bao_ok({ ok: 1, msg: 'Đã khôi phục giá trị mặc định' })
            }, 100);
            return false;
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      },
      onContentReady: function () {
        if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
        {
          this.buttons.reset_default.show();
          list_setting();
        }
      }
    });
  }
  function admin_panel() {
    if (alert_not_login()) return;// khi vào admin_panel
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-user',
      title: 'Xin chào <b>' + user_info.fullname + '</b>',
      content: '<div id="list-user"></div><p>Các tính năng dành cho bạn</p>',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'blue',
      columnClass: 'm',
      escapeKey: 'cancel',
      buttons: {
        add_user: {
          text: '<i class="fa fa-user-plus"></i> Thêm user',
          btnClass: 'btn-primary',
          isHidden: true,
          action: function () {
            //console.log(all_quyen);
            add_new_user();
            return false; //ko đóng dialog
          }
        },
        change_pw: {
          text: '<i class="fa fa-key"></i> Đổi mật khẩu',
          btnClass: 'btn-blue',
          action: function () {
            do_change_pw();
            return false; //ko đóng dialog
          }
        },
        setting: {
          text: '<i class="fa fa-gear"></i> Cấu hình',
          btnClass: 'btn-info',
          isHidden: true,
          action: function () {
            admin_setting();
            return false; //ko đóng dialog
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc', 'c', 'C'],
          btnClass: 'btn-red',
        }
      },
      onContentReady: function () {
        if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
        {
          this.buttons.add_user.show();
          this.buttons.setting.show();
          list_user(); //khi admin_panel show lần đầu
        }
      }
    });
  }
  function load_gui() {
    if (logined) {
      $('.login_info').html("<i class='fa fa-user'></i> Xin chào&nbsp;<b>" + user_info.fullname + "</b>");
      $('#cmdLogin').hide();
      $('#cmdLogout, .login_info, .btn-thong-ke, .btn-het-gio').removeClass('not-show');
      $('#cmdLogout, .login_info, .btn-thong-ke, .btn-het-gio').show();
      $('.login_info').click(function () { admin_panel(); });
    } else {
      $('.login_info').html('');
      $('#cmdLogin').removeClass('not-show');
      $('#cmdLogin').show();
      $('#cmdLogout, .login_info, .btn-thong-kem ,btn-het-gio').hide();
    }
  }
  function do_login() {
    $('#cmdLogin').addClass("active");
    let uidck = get_store('uid');
    if (!uidck) uidck = '';
    if (uidck === undefined) uidck = '';
    let dialogLogin = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-key',
      title: 'Login system',
      type: 'blue',
      lazyOpen: true,
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      content: '' +
        '<form action="" class="formName">' +
        '<div class="form-group">' +
        '<label>Username:</label>' +
        '<input type="text" placeholder="Enter Username" class="uid form-control" value="' + uidck + '" required />' +
        '</div>' +
        '<div class="form-group">' +
        '<label>Password:</label>' +
        '<input type="password" placeholder="Enter password" class="pwd form-control" required />' +
        '</div>' +
        '</form>',
      escapeKey: 'cancel',
      buttons: {
        formSubmit: {
          text: '<i class="fa fa-circle-check"></i> Login',
          btnClass: 'btn-blue cmd-submit',
          action: function () {
            let uid = this.$content.find('.uid').val();
            let pwd = this.$content.find('.pwd').val();
            if (uid == '') {
              this.$content.find('.uid').focus();
              return false;
            }
            if (pwd == '') {
              this.$content.find('.pwd').focus();
              return false;
            }
            $.post(api,
              {
                action: "do_login",
                uid: uid,
                pwd: pwd,
              },
              function (json) {
                logined = json.ok;
                if (logined) {
                  user_info = json;
                  load_gui();
                  localStorage.logined = JSON.stringify(json);
                  setLocal("uid", json.uid)
                  setLocal("ck", json.cookie)
                  setCookie('uid', json.uid, 30);
                  setCookie('ck', json.cookie, 30);
                  dialogLogin.close();
                } else {
                  load_gui();
                  $.confirm({
                    animateFromElement: false,
                    typeAnimated: false,
                    icon: 'fa fa-warning',
                    title: 'Warning',
                    escapeKey: 'ok',
                    type: 'red',
                    content: json.msg,
                    autoClose: 'OK|5000',
                    escapeKey: 'OK',
                    buttons: {
                      OK: {
                        text: '<i class="fa fa-circle-check"></i> Close',
                        keys: ['enter', 't'],
                        btnClass: 'btn-red',
                        action: function () {
                        }
                      },
                    },
                    onDestroy: function () {
                      dialogLogin.$content.find('.pwd').focus();
                    }
                  })
                }
              });
            return false;
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          btnClass: 'btn-red',
        },
      },
      onClose: function () {
        $('#cmdLogin').removeClass("active");
      },
      onContentReady: function () {
        //$('#cmdLogin').addClass("active");
        let self = this;
        let uid = get_store('uid');
        if (uidck == '')
          self.$content.find('.uid').focus();
        else
          self.$content.find('.pwd').focus();
        self.$content.find('.uid').keyup(function (event) {
          if (event.keyCode === 13) {
            if (self.$content.find('.uid').val() == '')
              this.$content.find('.uid').focus();
            else
              self.$content.find('.pwd').focus();
          }
        });
        self.$content.find('.pwd').keyup(function (event) {
          if (event.keyCode === 13) {
            if (self.$content.find('.uid').val() == '')
              this.$content.find('.uid').focus();
            else if (self.$content.find('.pwd').val() == '')
              this.$content.find('.pwd').focus();
            else {
              let x = $.find('.cmd-submit');
              x[0].click();
            }
          }
        });
      }
    });
    dialogLogin.open();
  }
  function do_logout() {
    //let ck = get_store('ck');
    //let uid = get_store('uid');
    $.post(api,
      {
        action: "do_logout",
        //uid: uid,
        //ck: ck,  //tự nó gửi đi theo đường ck
      },
      function (json) {
        if (json.ok) {
          logined = false;
          gui_first = 0;
          eraseCookie('ck');
          delLocal('ck');
          localStorage.clear();
          load_gui();
          window.location.href = "/";
        }
      });
  }
  function check_login() {
    let ck = get_store('ck');
    let uid = get_store('uid');
    if (ck != null && uid != null) {
      $.post(api,
        {
          action: "check_logined",
          //ck: ck,
          //uid: uid,  //tự nó gửi đi theo đường ck
        },
        function (json) {
          logined = json.ok;
          if (logined) {
            user_info = json;
            localStorage.logined = JSON.stringify(json);
            setLocal("uid", json.uid)
            setLocal("ck", json.cookie)
            setCookie('uid', json.uid, 30);
            setCookie('ck', json.cookie, 30);
          }
          load_gui();
        });
    } else {
      logined = false;
      load_gui();
    }
  }

  function auto_play_in_queue() {
    if (!gtts_playing && !Q.isEmpty()) {
      var item = Q.dequeue();
      play_tts(item.text);
    };
  }


  function init() {
    toastr.options = {
      "closeButton": true,
      "debug": false,
      "newestOnTop": true,
      "progressBar": false,
      "positionClass": "toast-top-right",
      "preventDuplicates": true,
      "onclick": null,
      "showDuration": "300",
      "hideDuration": "1000",
      "timeOut": "5000",
      "extendedTimeOut": "1000",
      "showEasing": "swing",
      "hideEasing": "linear",
      "showMethod": "fadeIn",
      "hideMethod": "fadeOut"
    }
    get_list_setting();
    monitor('monitor', draw_init)

    var wait_monitor = 0;
    setInterval(function () {
      wait_monitor++;
      if (wait_monitor > setting.monitor_interval) {
        wait_monitor = 0;
        monitor('monitor', update_status);
      }
    }, 1000);
    setInterval(function () { auto_play_in_queue() }, 1000);

    //ngăn menu phải
    //if (document.addEventListener) {
    //  document.addEventListener('contextmenu', function (e) {
    //    e.preventDefault();
    //  }, false);
    //}
    $('.btn-thong-ke').click(function () { thong_ke(); });
    $('#cmdLogin').click(function () { do_login() });
    $('#cmdLogout').click(function () { do_logout(); });
    $('.btn-het-gio').click(function () { het_gio_all() });
    check_login(); //auto login
  }
  init();
}); //end ready