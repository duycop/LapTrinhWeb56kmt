$(document).ready(function () {
  const setting = {
    tab_title: "MAI FOOD VN",
    app_title: "CÔNG TY TNHH MAI FOOD VN",
    app_sologan: "An toàn, đa dạng, hợp lý!",
    monitor_interval: 1,
  }
  const default_setting = {};
  const ca_name = { '1': 'Sáng', '2': 'Trưa', '3': 'Tối', '4': 'Đêm' };
  for (var item in setting) default_setting[item] = setting[item];

  const api = '/api.ashx';
  const mp3 = '/mp3/';

  var logined = false, user_info, all_quyen, today = '';

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

  //--auto play mp3---
  /*
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
  function play_vip(id) {
    Q.xoa_sach();
    if (audio && gtts_playing) {
      audio.pause();
    }
    Q.enqueue({ id: id, vip: 1, text: setting.het_gio + ' ' + id });
    gtts_playing = 0;
  }
  function play_nomal(id) {
    Q.clear();
    Q.enqueue({ id: id, text: setting.het_gio + ' ' + id });
  }
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
  function auto_play_in_queue() {
    if (!gtts_playing && !Q.isEmpty()) {
      var item = Q.dequeue();
      play_tts(item.text);
    };
  }
  /**/
  //--end auto play mp3---
  var json_global;
  function monitor(action, callback, callback2) {
    $.post(api,
      {
        action: action, //gửi đi action
        today: today
      },
      function (json) {
        json_global = json;
        callback(json, callback2);
      },
    );
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
  function getItem(arr, id) {
    for (var item of arr) {
      if (item.id == id) return item;
    }
    return null;
  }
  function listSuat(suat, arr, id) {
    var s = '';
    if (id == 0) s += '<ol type="1">';
    for (var c of arr) {
      var item = getItem(suat, c.id);
      if (item == null) return '';
      if (id == 0) s += '<li>';
      s += `<span title="${item.name}">${item.sign}<span class="badge rounded-pill bg-primary">${c.sl}</span></span> `;
      if (id == 0) s += '</li>';
    }
    if (id == 0) s += '</ul>';
    return s;
  }
  function company_order(item_company, ca, json) {
    if (!ca) ca = 0;
    if (ca == 0) return;

    var ds_company = '', ds_ca = '', ds_suat = '';
    for (var cty_item of json.data) {
      if (cty_item.id > 0)
        if (cty_item.id == item_company.id) {
          ds_company += `<option value="${cty_item.id}" selected>${cty_item.name} - ${cty_item.address} - ${cty_item.phone}</option>`;
          break;
        }
      //else
      //ds_company += `<option value="${cty_item.id}" >${cty_item.name} - ${cty_item.address} - ${cty_item.phone}</option>`;
    }
    for (var ca_item in ca_name) {
      if (ca_item == ca) {
        ds_ca += `<option value="${ca_item}" selected>${ca_name[ca_item]}</option>`;
        break;
      }
      //else
      //ds_ca += `<option value="${ca_item}" >${ca_name[ca_item]}</option>`;
    }
    ds_suat += '<option selected="true" disabled="disabled" value="0">--Chọn suất--</option>';
    for (var suat_item of json.suat) {
      ds_suat += `<option value="${suat_item.id}">${suat_item.name} (${format_price(suat_item.price)})</option>`;
    }
    var dialog_order;
    function reload_order() {
      monitor('monitor', draw_init, function () {
        var content = list_order_done(item_company.id, ca);
        $('#list-order-done').html(content);
        $('.btn-order-delete').click(function () {
          var id_suat = $(this).data('suat');
          var ten = $(this).data('name');
          var sl = $(this).data('sl');
          delete_button(id_suat, ten, sl);
        });
        $('.btn-order-edit').click(function () {
          var id_suat = $(this).data('suat');
          var sl = $(this).data('sl');
          edit_button(id_suat, sl);
        });
        $('#edit-suat').focus();
      });
    }
    function list_order_done(id_company, id_ca) {
      var s = []
      for (var item of json_global.data) {
        if (item.id == id_company) {
          var c = [];
          if (id_ca == 1) c = item.c1;
          if (id_ca == 2) c = item.c2;
          if (id_ca == 3) c = item.c3;
          if (id_ca == 4) c = item.c4;
          for (var order_item of c) {
            var item_suat = getItem(json.suat, order_item.id);
            if (item_suat) {
              var content = `<tr id="order_suat_${item_suat.id}">
              <td>${item_suat.name}</td>
              <td>${format_price(item_suat.price)}</td>
              <td><span class="badge rounded-pill bg-primary">${order_item.sl}</span></td>
              <td>
                <button class="btn btn-sm btn-warning btn-order-edit" data-suat="${item_suat.id}" data-sl="${order_item.sl}">Sửa</button>
                <button class="btn btn-sm btn-danger btn-order-delete" data-name="${item_suat.name}" data-suat="${item_suat.id}" data-sl="${order_item.sl}">Xóa</button>
              </td>
              </tr>`;
              s.push(content);
            }
          }
          break;
        }
      }
      var kq = '';
      if (s.length == 0) {
        kq = `<span class="badge rounded-pill bg-danger">Chưa đặt suất ăn nào</span>`;
      } else {
        kq += 'Đã đặt các suất ăn:';
        kq += `<table width="100%" class="table table-hover table-striped"><thead><tr class="table-info">
              <th>Tên</th>
              <th>Giá</th>
              <th>Số&nbsp;lượng</th>
              <th>Action</th>
              </tr></thead><tbody>`;
        for (var content of s) {
          kq += content;
        }
        kq += '</tbody></table>';
      }
      return kq;
    }
    function update_soluong() {
      var id_suat = $('#edit-suat').val();
      if (!id_suat) return;

      var id_company = $('#edit-company').val();
      var id_ca = $('#edit-ca').val();
      $.post(api,
        {
          action: 'dem_suat_an',
          id_company: id_company,
          id_ca: id_ca,
          id_suat: id_suat
        },
        function (json) {
          if (json.ok) {
            $('#soluong-old').val(json.soluong);
            if (json.soluong == 0) json.soluong = '';
            $('#soluong-new').val(json.soluong);
            $('#soluong-new').focus();
          }
          else
            thong_bao_loi(json);
        })
    }
    function update_name_cty() {
      var id_company = $('#edit-company').val();
      var selected_item = null;
      for (var c_item of json.data) {
        if (c_item.id == id_company) {
          selected_item = c_item;
          break;
        }
      }
      if (selected_item != null) {
        dialog_order.setTitle('Đặt suất ăn cho công ty: ' + selected_item.name + (selected_item.vip ? ' <i class="fa fa-star" style="color:red"></i>' : ''));
      }
    };
    function delete_button(id_suat, ten, sl) {
      if (!id_suat) {
        thong_bao_loi({ ok: 0, msg: 'Chưa chọn suất ăn!' }, { w: 1, t: 1 }, function () {
          $('edit-suat').focus();
        })
        return;
      }

      var id_company = $('#edit-company').val();
      var id_ca = $('#edit-ca').val();
      $.confirm({
        animateFromElement: false,
        typeAnimated: false,
        icon: 'fa fa-circle-question',
        title: 'Xác nhận xóa đặt suất ăn',
        closeIcon: true,
        closeIconClass: 'fa fa-close',
        columnClass: 'm',
        type: 'red',
        escapeKey: 'cancel',
        content: `Xác nhận muốn xóa<br>Suất ăn <span class="badge rounded-pill bg-primary">${ten}</span> số lượng: <span class="badge rounded-pill bg-primary">${sl}</span> ??`,
        autoClose: "cancel|5000",
        buttons: {
          yes: {
            text: '<i class="fa fa-trash-can"></i> Yes',
            keys: ['enter', 'y'],
            btnClass: 'btn-danger',
            action: function () {
              $.post(api,
                {
                  action: 'delete_order',
                  id_company: id_company,
                  id_ca: id_ca,
                  id_suat: id_suat
                },
                function (json) {
                  if (json.ok) {
                    reload_order();
                  }
                  else
                    thong_bao_loi(json);
                })
            }
          },
          cancel: {
            text: '<i class="fa fa-circle-check"></i> No no no',
            keys: ['n'],
            btnClass: 'btn-blue',
          }
        }
      })
    }
    function save_button() {
      var id_suat = $('#edit-suat').val();
      if (!id_suat) {
        thong_bao_loi({ ok: 0, msg: 'Chưa chọn suất ăn!' }, { w: 1, t: 1 }, function () {
          $('edit-suat').focus();
        })
        return;
      }

      var id_company = $('#edit-company').val();
      var id_ca = $('#edit-ca').val();
      var so_luong = $('#soluong-new').val();
      if (so_luong == '' || so_luong <= 0) {
        thong_bao_loi({ ok: 0, msg: 'Phải nhập số lượng suất ăn chứ!' }, { w: 1, t: 1 }, function () {
          $('#soluong-new').focus();
        })
        return false;
      }
      $.post(api,
        {
          action: 'add_order',
          id_company: id_company,
          id_ca: id_ca,
          id_suat: id_suat,
          so_luong: so_luong
        },
        function (json) {

          if (json.ok) {
            $('#soluong-old').val(so_luong);
            reload_order();
          } else {
            thong_bao_loi(json)
          }
        });
      return false;
    }
    function edit_button(id_suat, soluong) {
      $('#edit-suat').val(id_suat);
      $('#soluong-old').val(soluong);
      if (soluong == 0) soluong = '';
      $('#soluong-new').val(soluong);
      $('#soluong-new').focus();
    }
    var content = `<div class="table-responsive-sm">
    <table align="center" width="100%">
    <tr>
    <td>Công&nbsp;ty:</td>
    <td><select class="form-select cbo-order" id="edit-company">${ds_company}</select></td>
    </tr>
    <tr>
    <td>Ca:</td>
    <td><select class="form-select cbo-order" id="edit-ca">${ds_ca}</select></td>
    </tr>
    <tr>
    <td>Suất&nbsp;ăn:</td>
    <td><select class="form-select cbo-order" id="edit-suat">${ds_suat}</select></td>
    </tr>
    <tr>
    <td>Số&nbsp;lượng:</td>
    <td>
    <div class="input-group">
      <span class="input-group-text">Cũ</span>
      <input type="number" class="form-control" id="soluong-old" value="0" disabled>
      <span class="input-group-text">Mới</span>
      <input type="number" class="form-control" id="soluong-new" placeholder="Số mới">
      <button class="btn btn-info" id="save-order" type="button">Save</button>
    </div>
    </td>
    </tr>
    </table></div>
    <hr>
    <div class="table-responsive-sm" id="list-order-done">${list_order_done(item_company.id, ca)}</div>
    `;
    dialog_order = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-utensils',
      title: 'Đặt suất ăn cho công ty',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      columnClass: 'l',
      type: 'blue',
      escapeKey: 'cancel',
      content: content,
      buttons: {
        reload: {
          text: '<i class="fa fa-utensils"></i> Reload',
          btnClass: 'btn-primary',
          action: function () {
            reload_order();
            return false;
          }
        },

        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Đóng',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      },
      onContentReady: function () {
        $('.cbo-order').on('change', function () {
          update_soluong();
        });
        $('#edit-company').on('change', function () {
          update_name_cty();
        });
        $('#save-order').click(function () {
          save_button();
        });
        $('.btn-order-delete').click(function () {
          var id_suat = $(this).data('suat');
          var ten = $(this).data('name');
          var sl = $(this).data('sl');
          delete_button(id_suat, ten, sl);
        });
        $('.btn-order-edit').click(function () {
          var id_suat = $(this).data('suat');
          var sl = $(this).data('sl');
          edit_button(id_suat, sl);
        });
        update_soluong();
        update_name_cty();
        $('#soluong-new').keyup(function (event) {
          if (event.keyCode === 13) {
            if ($('#soluong-new').val() == '')
              $('#soluong-new').focus();
            else
              save_button();
          }
        });
        $('#soluong-new').focus();
      }
    });
  }
  function draw_init(json, callback2) {
    if (json.ok) {
      var content = '' +
        '<h5>Kế hoạch ngày: <span class="badge rounded-pill bg-success">' + json.ngay + '</span> <button class="btn btn-sm btn-success chon-ngay-monitor" data-ngay="' + json.ngay + '">Chọn ngày</button></h5>' +
        '<div class="table-responsive">' +
        '<table id="ke-hoach-sx" class="ke-hoach-sx table table-bordered table-hover table-striped">' +
        '<thead><tr class="table-info fw-bold">' +
        '<th class="text-center" width="20px">STT</th>' +
        '<th>Công ty</th>' +
        '<th width="20%">Sáng</th>' +
        '<th width="20%">Trưa</th>' +
        '<th width="20%">Tối</th>' +
        '<th width="20%">Đêm</th>' +
        '</tr></thead><tbody>';
      var stt = 0;
      for (var item of json.data) {
        content += `<tr data-cid="${item.id}" class="${(item.id > 0 ? '' : 'table-danger fw-bold')}">` +
          '<td align=center nowarp class="btn-company-order">' + (item.id > 0 ? (++stt) : '') + '</td>' +
          '<td align="' + (item.id > 0 ? 'left' : 'right') + '" nowarp class="btn-company-order">' + (item.name) + (item.vip == 1 ? ' <i class="fa fa-star" style="color:red"></i>' : '') + '</td>' +
          `<td align=left nowarp class="btn-company-order" data-ca="1" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['1']}">${listSuat(json.suat, item.c1, item.id)}</td>` +
          `<td align=left nowarp class="btn-company-order" data-ca="2" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['2']}">${listSuat(json.suat, item.c2, item.id)}</td>` +
          `<td align=left nowarp class="btn-company-order" data-ca="3" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['3']}">${listSuat(json.suat, item.c3, item.id)}</td>` +
          `<td align=left nowarp class="btn-company-order" data-ca="4" title="Click để đặt suất ăn cho công ty ${item.name} ca ${ca_name['4']}">${listSuat(json.suat, item.c4, item.id)}</td>` +
          '</tr>';
      }
      content += "</tbody></table></div>";

      $('#monitor-zone').html(content);
      $('.btn-company-order').click(function () {
        var id = $(this).parent().data('cid');
        var ca = $(this).data('ca');
        if (id > 0) {
          for (var item of json.data) {
            if (item.id == id) {
              company_order(item, ca, json);
              break;
            }
          }
        }
      });
      $('.chon-ngay-monitor').click(function () {
        var ngay = $(this).data("ngay");
        var content = `
        <p>Hôm nay là ngày: ${new Date().toISOString().split('T')[0]}</p>
        <div class="input-group">
          <span class="input-group-text">Chọn ngày:</span>
          <input type="date" class="form-control" id="txt-ngay-chon" value="${ngay}" style="text-align:center">
        </div>
        `;
        $.confirm({
          animateFromElement: false,
          typeAnimated: false,
          icon: 'fa fa-calendar-check',
          title: 'Chọn ngày',
          closeIcon: true,
          closeIconClass: 'fa fa-close',
          columnClass: 's',
          type: 'blue',
          escapeKey: 'cancel',
          content: content,
          buttons: {
            chon: {
              text: '<i class="fa fa-calendar-check"></i> Chọn',
              btnClass: 'btn-primary',
              action: function () {
                today = $('#txt-ngay-chon').val();
                monitor('monitor', draw_init);
              }
            },

            cancel: {
              text: '<i class="fa fa-circle-xmark"></i> Đóng',
              keys: ['esc'],
              btnClass: 'btn-red',
            }
          },
          onContentReady: function () {
            function addDays(date, days) {
              var result = new Date(date);
              result.setDate(result.getDate() + days);
              return result;
            }

          }
        });
      });
      if (callback2) callback2(json);
    } else {
      $('#monitor-zone').html('Không có dữ liệu');
    }
  }
  //--thuc_don--
  function format_price(price) {
    var t = price + 'vnđ';
    t = t.replace('000vnđ', 'K');
    return t;
  }
  function list_suat_an() {
    $.post(api,
      {
        action: 'list_suat_an'
      },
      function (json) {
        if (json.ok) {
          var content = '<div class="table-responsive-sm"><table id="table_list_suat_an" class="table table-hover table-striped">' +
            '<thead><tr class="table-info fw-bold">' +
            '<th style="text-align:center">Stt</th>' +
            '<th>Kí hiệu</th>' +
            '<th>Tên</th>' +
            '<th style="text-align:right">Giá</th>' +
            '<th style="text-align:center">Action</th>' +
            '</tr></thead><tbody>';
          var stt = 0;
          for (var item of json.data) {
            var action = '<button class="btn btn-sm btn-warning btn-edit-suat-an" data-sid="' + item.id + '">Sửa</button>';
            content += '<tr class="' + (item.enable ? '' : 'table-danger') + '">' +
              '<td align=center>' + (++stt) + '</td>' +
              '<td>' + item.sign + '</td>' +
              '<td>' + item.name + '</td>' +
              '<td align=right>' + format_price(item.price) + '</td>' +
              '<td align=center>' + action + '</td>' +
              '</tr>'
          }
          content += '</tbody></table></div>';
          $('#list_suat_an').html(content);
          sort_table('#table_list_suat_an', "Danh sách suất ăn", 20);
          $('.btn-edit-suat-an').click(function () {
            var id = $(this).data('sid');
            for (var item of json.data) {
              if (item.id == id) {
                edit_suat_an(item);
                break;
              }
            }
          });
        }
        else {
          thong_bao_loi(json)
        }
      });
  }
  function edit_suat_an(item) {
    var content = `<div class="table-responsive-sm"><table align="center" width="100%">
    <tr>
    <td>Kí hiệu:</td>
    <td><input type="text" class="form-control" id="edit-sign" value="`+ item.sign + `"></td>
    </tr>
    <tr>
    <td>Tên:</td>
    <td><input type="text" class="form-control" id="edit-name" value="`+ item.name + `"></td>
    </tr>
    <tr>
    <td>Giá:</td>
    <td><input type="text" class="form-control" id="edit-price" value="`+ item.price + `"></td>
    </tr>
    </table></div>`;
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-utensils',
      title: `Cập nhật thông tin suất ăn`,
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      columnClass: 'm',
      type: 'blue',
      escapeKey: 'cancel',
      content: content,
      buttons: {
        enable: {
          text: '<i class="fa fa-utensils"></i> Enable',
          btnClass: 'btn-primary',
          action: function () {
            var self = this;
            $.post(api,
              {
                action: 'enable_suat_an',
                id: item.id,
                name: $('#edit-name').val(),
                sign: $('#edit-sign').val(),
                price: $('#edit-price').val(),
              },
              function (json) {

                if (json.ok) {
                  self.close();
                  list_suat_an();
                } else {
                  thong_bao_loi(json)
                }
              });
            return false;
          }
        },
        disable: {
          text: '<i class="fa fa-utensils"></i> Dis',
          btnClass: 'btn-warning',
          action: function () {
            var self = this;
            $.post(api,
              {
                action: 'disable_suat_an',
                id: item.id,
                name: $('#edit-name').val(),
                sign: $('#edit-sign').val(),
                price: $('#edit-price').val(),
              },
              function (json) {

                if (json.ok) {
                  self.close();
                  list_suat_an();
                } else {
                  thong_bao_loi(json)
                }
              });
            return false;
          }
        },
        delete: {
          text: '<i class="fa fa-trash-can"></i> Del',
          btnClass: 'btn-danger',
          action: function () {
            var self = this;
            $.confirm({
              animateFromElement: false,
              typeAnimated: false,
              icon: 'fa fa-trash-can',
              closeIcon: true,
              closeIconClass: 'fa fa-close',
              columnClass: 's',
              type: 'red',
              escapeKey: 'cancel',
              title: `Xác nhận xóa: ${item.name} ?`,
              content: `Xóa suất ăn <b>${item.name}</b> (${format_price(item.price)}) nhé?`,
              buttons: {
                yes: {
                  text: '<i class="fa fa-trash-can"></i> Yes',
                  btnClass: 'btn-danger',
                  action: function () {
                    $.post(api,
                      {
                        action: 'delete_suat_an',
                        id: item.id,
                      },
                      function (json) {

                        if (json.ok) {
                          self.close();
                          list_suat_an();
                        } else {
                          thong_bao_loi(json)
                        }
                      });
                  }
                },
                cancel: {
                  text: '<i class="fa fa-circle-check"></i> No no no',
                  btnClass: 'btn-blue',
                }
              }
            });
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
        $('#edit-price').focus();
      }
    });
  }
  function add_suat_an() {
    var content = `<div class="table-responsive-sm"><table align="center" width="100%">
    <tr>
    <td>Kí hiệu:</td>
    <td><input type="text" class="form-control" id="edit-sign" value=""></td>
    </tr>
    <tr>
    <td>Tên:</td>
    <td><input type="text" class="form-control" id="edit-name" value=""></td>
    </tr>
    <tr>
    <td>Giá:</td>
    <td><input type="text" class="form-control" id="edit-price" value=""></td>
    </tr>
    </table></div>`;
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-utensils',
      title: 'Thêm suất ăn',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      columnClass: 'm',
      type: 'blue',
      escapeKey: 'cancel',
      content: content,
      buttons: {
        Add: {
          text: '<i class="fa fa-utensils"></i> Thêm',
          btnClass: 'btn-primary',
          action: function () {
            var self = this;
            $.post(api,
              {
                action: 'add_suat_an',
                name: $('#edit-name').val(),
                sign: $('#edit-sign').val(),
                price: $('#edit-price').val(),
              },
              function (json) {

                if (json.ok) {
                  self.close();
                  list_suat_an();
                } else {
                  thong_bao_loi(json)
                }
              });
            return false;
          }
        },

        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Đóng',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      },
      onContentReady: function () {
        $('#edit-sign').focus();
      }
    });
  }
  function thuc_don() {
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-utensils',
      title: 'Danh sách các suất ăn',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      columnClass: 'l',
      type: 'blue',
      escapeKey: 'cancel',
      content: '<div id="list_suat_an"></div>',
      buttons: {
        ok: {
          text: '<i class="fa fa-utensils"></i> Thêm',
          btnClass: 'btn-blue',
          action: function () {
            add_suat_an();
            return false;
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Đóng',
          btnClass: 'btn-red',
          action: function () {
            monitor('monitor', draw_init);
          }
        }
      },
      onContentReady: function () {
        list_suat_an();
      }
    });
  }
  //--end thuc_don--

  //--report zone--

  //--end report zone--

  //--các hàng dùng chung
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
        "info": "Show từ _START_ đến _END_ / tổng _TOTAL_",
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
  function thong_bao_ok(json, option) {
    if (json.ok)
      if (json.msg != null && json.msg != '') {
        if (!option) {
          option = { t: 1, w: 1 }
        }
        if (option.t)
          toastr["info"]("<b>Thông báo</b><br>" + json.msg)
        if (option.w)
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
  function thong_bao_loi(json, option, callback) {
    if (!json.ok)
      if (json.msg != null && json.msg != '') {
        if (!option) {
          option = { t: 1, w: 1 }
        }
        if (option.t)
          toastr["warning"]("<b>Thông báo lỗi</b><br>" + json.msg)
        if (option.w)
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
            },
            onClose: function () {
              if (callback) callback();
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

  //--admin user manager--
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
          text: '<i class="fa fa-user-plus"></i> Add user',
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
                  thong_bao_loi(json); //báo lỗi khi add_user
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
                  thong_bao_ok(json);
                  dialog_set_pw.close(); //đóng thằng dialog_set_pw lại
                } else {
                  thong_bao_loi(json); //báo lỗi khi set_pw
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
      thong_bao_loi({ ok: 0, msg: "Không tự xóa mình được!" }); //báo lỗi khi tự xóa
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
          btnClass: 'btn-red',
          keys: ['enter', 'x', 'X'],
          action: function () {
            //gửi đi api: y/c xóa
            $.post(api, { action: 'delete_user', deluid: uid }, function (json) {
              if (json.ok) {
                list_user(); //sau khi delete_user thì tải lại
              } else {
                thong_bao_loi(json); //báo lỗi khi delete_user
              }
            });
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc', 'c', 'C'],
          btnClass: 'btn-blue',
        }
      }
    });
  }
  function list_user() {
    $.post(api, { action: 'list_user' }, function (json) {
      if (json.ok) {
        all_quyen = json.quyen;
        var s = '<h4>Danh sách user</h4>' +
          '<div class="table-responsive-sm"><table class="table table-hover"><thead><tr class="table-info"><th>STT</th><th>Uid</th><th>Fullname</th><th>Role</th><th>Last login</th><th>Action</th></tr></thead><tbody>';
        var stt = 0;
        for (var item of json.data) {
          s += '<tr>';
          s += '<td align="center">' + (++stt) + '</td>';
          s += '<td nowarp>' + item.uid + '</td>';
          s += '<td nowarp>' + item.fullname.replace(' ', ' ') + '</td>';
          s += '<td nowarp>' + item.rolename + '</td>';
          s += '<td nowarp>' + item.last + '</td>';
          var action = '<button class="btn btn-sm btn-warning btn-action-user" data-action="set_pw" data-uid="' + item.uid + '" title="Set password"><i class="fa fa-key"></i></button>';
          action += ' <button class="btn btn-sm btn-danger btn-action-user" data-action="delete_user" data-uid="' + item.uid + '" title="Delete user"><i class="fa fa-user-xmark"></i></button>';
          s += '<td>' + action + '</td></tr>';
          s += '</tr>';
        }
        s += '</tbody></table></div>';
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
        thong_bao_loi(json); //báo lỗi khi list_user
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
                thong_bao_loi(json) //báo lỗi khi do_change_pw
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
  function admin_panel() {
    if (alert_not_login()) return;// khi vào admin_panel
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-user',
      title: 'Control Panel: <b>' + user_info.fullname + '</b>',
      content: '<div id="list-user"></div><p>Các tính năng dành cho bạn</p>',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'blue',
      columnClass: 'l',
      escapeKey: 'cancel',
      buttons: {
        add_user: {
          text: '<i class="fa fa-user-plus"></i> Add user',
          btnClass: 'btn-primary',
          isHidden: true,
          action: function () {
            //console.log(all_quyen);
            add_new_user();
            return false; //ko đóng dialog
          }
        },
        change_pw: {
          text: '<i class="fa fa-key"></i> Change Pw',
          btnClass: 'btn-warning',
          action: function () {
            do_change_pw();
            return false; //ko đóng dialog
          }
        },
        setting: {
          text: '<i class="fa fa-gear"></i> Setting',
          btnClass: 'btn-blue',
          isHidden: true,
          action: function () {
            admin_setting();
            return false; //ko đóng dialog
          }
        },
        company: {
          text: '<i class="fa fa-building"></i> Company',
          btnClass: 'btn-info',
          isHidden: true,
          action: function () {
            admin_company();
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
          this.buttons.company.show();
          list_user(); //khi admin_panel show lần đầu
        }
      }
    });
  }
  //--end admin user manager--

  //--admin admin_company--
  function show_add_company() {
    //giống edit
    var content = `
    <div class="table-responsive-sm"><table align="center" width="100%" class="table-company">
    <tr>
    <td>Name:</td>
    <td><input type="text" class="form-control" id="edit-name" placeholder="Nhập tên công ty"></td>
    </tr>
    <tr>
    <td>Address:</td>
    <td><input type="text" class="form-control" id="edit-address" placeholder="Nhập địa chỉ"></td>
    </tr>
    <tr>
    <td>GPS:</td>
    <td>
      <div class="input-group">
          <input type="search" class="form-control" id="edit-gps" value="" placeholder="vd: 21.5842342,105.7934998">
          <button class="btn btn-outline-primary" type="button" id="cmd_get_gps" title="Lấy tọa độ GPS của vị trí hiện tại">Get</button>
      </div>
    </td>
    </tr>
    <tr>
    <td>Phone:</td>
    <td><input type="text" class="form-control" id="edit-phone" placeholder="Nhập sđt"></td>
    </tr>
    <tr>
    <td>Zalo:</td>
    <td><input type="text" class="form-control" id="edit-zalo" placeholder="https://zalo.me/..."></td>
    </tr>
    </table></div>
    `;
    var dialog_company_edit = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-pen-to-square',
      title: 'Thêm công ty mới',
      content: content,
      type: 'green',
      buttons: {
        ok: {
          text: '<i class="fa fa-circle-check"></i> Thêm công ty',
          btnClass: 'btn-primary',
          action: function () {
            //làm ý 3
            var data = {
              action: 'add_company',
              name: $('#edit-name').val(),
              address: $('#edit-address').val(),
              gps: $('#edit-gps').val(),
              phone: $('#edit-phone').val(),
              zalo: $('#edit-zalo').val(),
            }
            $.post(api, data, function (json) {
              if (json.ok) {
                thong_bao_ok(json);
                list_company();
                dialog_company_edit.close();
              } else {
                thong_bao_loi(json);
              }
            })
            return false; //ko đóng
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      },
      onContentReady: function () {
        $('#cmd_get_gps').click(function () {
          if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (gps) {
              $('#edit-gps').val(gps.coords.latitude + ',' + gps.coords.longitude);
              toastr["info"]('Đã lấy được gps: ' + gps.coords.latitude + ',' + gps.coords.longitude);
            });
          } else {
            toastr["warning"]('Không lấy được gps');
          }
        });
      }
    });
  }
  function show_edit_company(item) {
    //liệt kê các việc cần làm
    //1.show 1 dialog: có các trường thông tin để nhập liệu
    //2.điền sẵn giá trị hiện tại của các trường
    //3.chờ bấm submit -> thu thập trên form -> gửi api -> thông báo kq
    var content = `
    <div class="table-responsive-sm"><table align="center" width="100%" class="table-company">
    <tr>
    <td>Name:</td>
    <td><input type="text" class="form-control" id="edit-name" value="`+ item.name + `" placeholder="Nhập tên công ty"></td>
    </tr>
    <tr>
    <td>Address:</td>
    <td><input type="text" class="form-control" id="edit-address" value="`+ item.address + `" placeholder="Nhập địa chỉ"></td>
    </tr>
    <tr>
    <td>GPS:</td>
    <td>
      <div class="input-group">
          <input type="search" class="form-control" id="edit-gps" value="`+ item.lat + `, ` + item.lng + `" placeholder="vd: 21.5842342,105.7934998">
          <button class="btn btn-outline-primary" type="button" id="cmd_get_gps" title="Lấy tọa độ GPS của vị trí hiện tại">Get</button>
      </div>
    </td>
    </tr>
    <tr>
    <td>Phone:</td>
    <td><input type="text" class="form-control" id="edit-phone" value="`+ item.phone + `" placeholder="Nhập sđt"></td>
    </tr>
    <tr>
    <td>Zalo:</td>
    <td><input type="text" class="form-control" id="edit-zalo" value="`+ item.zalo + `" placeholder="https://zalo.me/..."></td>
    </tr>
    </table></div>
    `;
    var dialog_company_edit = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-pen-to-square',
      title: 'Sửa thông tin công ty',
      columnClass: 'l',
      content: content,
      type: 'green',
      buttons: {
        ok: {
          text: '<i class="fa fa-circle-check"></i> Cập nhật',
          btnClass: 'btn-primary',
          action: function () {
            //làm ý 3
            var data = {
              action: 'edit_company',
              id: item.id,
              name: $('#edit-name').val(),
              address: $('#edit-address').val(),
              gps: $('#edit-gps').val(),
              phone: $('#edit-phone').val(),
              zalo: $('#edit-zalo').val(),
            }
            $.post(api, data, function (json) {
              if (json.ok) {
                thong_bao_ok(json);
                list_company();
                dialog_company_edit.close();
              } else {
                thong_bao_loi(json);
              }
            })
            return false; //ko đóng
          }
        },
        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc'],
          btnClass: 'btn-red',
        }
      },
      onContentReady: function () {
        $('#cmd_get_gps').click(function () {
          if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (gps) {
              $('#edit-gps').val(gps.coords.latitude + ',' + gps.coords.longitude);
              toastr["info"]('Đã lấy được gps: ' + gps.coords.latitude + ',' + gps.coords.longitude);
            });
          } else {
            toastr["warning"]('Không lấy được gps');
          }
        });
      }
    });
  }
  function show_delete_company(item) {
    //thông báo sẽ xóa, cần xác nhận
    //khi xác nhận -> gửi đi id cần xóa -> chờ ok để tải lại
    if (alert_not_login()) return;// khi vào admin_setting
    if (not_allow()) return; //admin_setting chi danh cho admin
    var dialog_del_company = $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-building',
      title: 'Xác nhận xóa công ty?',
      content: 'Bạn có chắc muốn xóa công ty <b>' + item.name + "</b> ?",
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'blue',
      columnClass: 'm',
      escapeKey: 'cancel',
      buttons: {
        ok: {
          text: '<i class="fa fa-circle-question"></i> Xóa ngay',
          keys: ['t'],
          btnClass: 'btn-red',
          action: function () {
            //gửi api để xóa
            $.post(api, { action: 'delete_company', id: item.id }, function (json) {
              if (json.ok) {
                thong_bao_ok(json);
                list_company();
                dialog_del_company.close();
              }
              else {
                thong_bao_loi(json);
              }
            })
            return false; //ko đóng dialog
          }
        },

        cancel: {
          text: '<i class="fa fa-circle-xmark"></i> Close',
          keys: ['esc'],
          btnClass: 'btn-blue',
        }
      },

    });
  }
  function list_company() {
    $.post(api, { action: 'list_company' }, function (json) {
      if (json.ok) {
        var content = '<div class="table-responsive-sm">' +
          '<table id="ds_company" class="table table-hover table-striped">' +
          '<thead><tr class="table-info fw-bold">' +
          '<th class="text-center">STT</th>' +
          '<th>Công ty</th>' +
          '<th>Địa chỉ</th>' +
          '<th>Chỉ đường</th>' +
          '<th>Phone</th>' +
          '<th>Zalo</th>' +
          '<th class="text-center">Sửa/Xóa</th>' +
          '</tr></thead><tbody>';
        var stt = 0;
        for (var item of json.data) {
          var gps = '';
          if (item.lat == null || item.lng == null) {
            gps = '';
          } else {
            gps = item.lat + ',' + item.lng;
            gps = ' <a class="btn btn-sm btn-info btn-go-map" data-gps="' + gps + '" href="https://www.google.com/maps/dir/here/' + gps + '" target="_blank" title="Xem đường đi trên Google Map tới ' + item.name + '"><i class="fa fa-location-dot" style="color:red"></i> Chỉ đường</a>';
          }

          item.gps = gps;

          var phone = item.phone;
          if (phone == 'null' || phone == '')
            phone = '';
          else
            phone = '<a href="tel:' + phone + '"><i class="fa fa-tty"></i> ' + phone + '</a>';
          item.phone2 = phone;

          var zalo = item.zalo;
          if (zalo == 'null' || zalo == '')
            zalo = '';
          else
            zalo = '<a href="' + zalo + '" target="_blank"><img src="/images/icon-zalo.png" style="width:24px"></a>';


          var action = '';
          action += '<button class="btn btn-sm btn-warning btn-action-company" data-cid="' + item.id + '" data-action="edit-company">Sửa</button>';
          action += ' ';
          action += '<button class="btn btn-sm btn-danger btn-action-company" data-cid="' + item.id + '" data-action="delete-company">Xóa</button>';

          content += '<tr>' +
            '<td align=center nowarp>' + (++stt) + '</td>' +
            '<td align=left nowarp>' + (item.name) + '</td>' +
            '<td align=left nowarp>' + (item.address) + '</td>' +
            '<td align=left nowarp>' + gps + '</td>' +
            '<td align=left nowarp>' + (phone) + '</td>' +
            '<td align=left nowarp>' + (zalo) + '</td>' +
            '<td align=center nowarp>' + (action) + '</td>' +
            '</tr>';
        }
        content += "</tbody></table></div>";
        $('#list_company').html(content);
        $('.btn-action-company').click(function () {
          var id = $(this).data('cid');
          var selected_item = null;
          for (var item of json.data) {
            if (item.id == id) {
              selected_item = item;
              break;
            }
          }
          var action = $(this).data('action');
          if (action == 'edit-company') {
            show_edit_company(selected_item);
          } else if (action == 'delete-company') {
            show_delete_company(selected_item);
          }
        });
      } else {
        $('#list_company').html(json.msg);
      }
    });
  }
  function admin_company() {
    if (alert_not_login()) return;// khi vào admin_setting
    if (not_allow()) return; //admin_setting chi danh cho admin
    $.confirm({
      animateFromElement: false,
      typeAnimated: false,
      icon: 'fa fa-building',
      title: 'Các công ty đặt xuất ăn',
      content: '<div id="list_company"></div>',
      closeIcon: true,
      closeIconClass: 'fa fa-close',
      type: 'blue',
      columnClass: 'xl',
      escapeKey: 'cancel',
      buttons: {
        add: {
          text: '<i class="fa fa-address-card"></i> Add new',
          keys: ['t'],
          btnClass: 'btn-blue',
          isHidden: true,
          action: function () {
            show_add_company();
            return false;
          }
        },
        reload: {
          text: '<i class="fa fa-arrows-rotate"></i> Reload',
          btnClass: 'btn-info',
          isHidden: true,
          action: function () {
            if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
            {
              list_company();
              thong_bao_ok({ ok: 1, msg: "Đã tải lại dữ liệu" }, { t: 1, w: 0 })
              return false;
            }
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
          this.buttons.add.show();
          this.buttons.reload.show();
          list_company();
        }
      }
    });
  }
  //--end admin admin_company--

  //--admin setting zone--
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
              thong_bao_ok({
                ok: 1, msg: "<b>" + item.key + " = " + item.value + "</b><br>Vẫn thế, không đổi!"
              });
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
                    thong_bao_ok(json);
                    dialog_edit_setting.close();
                    list_setting();
                  } else {
                    thong_bao_loi(json);
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
          content = '<div class="table-responsive-sm">' +
            '<table id="thong-ke-chi-tiet" class="table table-hover table-striped">' +
            '<thead><tr class="table-info fw-bold">' +
            '<th align=center>stt</th>' +
            '<th align=left>Key</th>' +
            '<th align=left>Description</th>' +
            '<th>Value</th>' +
            '<th align=center>Last change</th>' +
            '<th align=center>Change</th>' +
            '</tr></thead><tbody>';
          var stt = 0;
          for (var item of json.data) {
            content += '<tr>' +
              '<td align=center>' + (++stt) + '</td>' +
              '<td align=left>' + item.key + '</span></td>' +
              '<td align=left>' + item.note + ':</span></td>' +
              '<td><span class="badge rounded-pill bg-primary btn-change-setting" data-key="' + item.key + '">' + item.value + '</span></span></td>' +
              '<td align=center>' + item.time + '</span></td>' +
              '<td align=center><button data-key="' + item.key + '" class="btn btn-sm btn-info btn-change-setting" title="Change ' + item.note + '"><i class="fa fa-pen-to-square"></i></button></span></td>' +
              '</tr>'
          }
          content += '</tbody></table></div>';
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
              thong_bao_ok({ ok: 1, msg: 'Đã khôi phục giá trị mặc định' }, { t: 0, w: 1 })
            }, 100);
            return false;
          }
        },
        reload: {
          text: '<i class="fa fa-arrows-rotate"></i> Reload',
          keys: ['r'],
          btnClass: 'btn-info',
          isHidden: true,
          action: function () {
            if (user_info.role == 100 || user_info.role == 3)//nếu đủ quyền
            {
              list_setting();
              thong_bao_ok({ ok: 1, msg: "Đã tải lại dữ liệu" }, { t: 1, w: 0 })
              return false;
            }
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
          this.buttons.reload.show();
          list_setting();
        }
      }
    });
  }
  //--end admin setting zone--

  //--login zone--
  function load_gui() {
    if (logined) {
      //$('.login_info').html("");
      $('#cmdLogin').hide();
      $('#cmdLogout, .login_info, .btn-thuc-don, .btn-order').removeClass('not-show');
      $('#cmdLogout, .login_info, .btn-thuc-don, .btn-order').show();
      $('.login_info').click(function () { admin_panel(); });
    } else {
      //$('.login_info').html('');
      $('#cmdLogin').removeClass('not-show');
      $('#cmdLogin').show();
      $('#cmdLogout, .login_info, .btn-thuc-don, .btn-order').hide();
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
    $.post(api,
      {
        action: "do_logout",
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
  //--end login zone--

  function main_init() {
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

    var wait_monitor = 0;
    today = getLocal('ngay');

    monitor('monitor', draw_init);
    setInterval(function () {
      wait_monitor++;
      if (wait_monitor > setting.monitor_interval) {
        wait_monitor = 0;
        //monitor('monitor', update_status);
      }
    }, 1000);
    //setInterval(function () { auto_play_in_queue() }, 1000);
    $('.btn-thuc-don').click(function () { thuc_don(); });
    $('#cmdLogin').click(function () { do_login() });
    $('#cmdLogout').click(function () { do_logout(); });
    $('.btn-het-gio').click(function () { het_gio_all() });
    check_login(); //auto login
  }
  main_init();
}); //end ready