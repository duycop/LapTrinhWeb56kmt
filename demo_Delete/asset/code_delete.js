$(document).ready(function () {
  var xoa_co_loi, wait_xoa_xong;
  function sort_table(id, fn, pageLength_) {
    var pageLength = 10;
    if (pageLength_) pageLength = pageLength_;
    if (!fn) fn = "Export";
    var stable = $(id).DataTable({
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
  function load_all_sv() {
    var s = 'Đang tải dữ liệu...';
    $('#all-sv-here').html(s);
    $.post("api.aspx",
      {
        action: 'load_all_sv',
      },
      function (data) {
        let ds = JSON.parse(data);
        s = '<table id="ds-sv" class="table table-hover">' +
          '<thead>' +
          '<tr class="table-info"><th width="20px">Chọn</th><th>STT</th><th>Mã SV</th><th>Họ</th><th>Tên</th><th>Lớp</th></tr>' +
          '<thead>' +
          '<tbody>';
        var stt = 0;
        for (var sv of ds) {
          s += '<tr id="row-masv-' + (sv.masv) + '">' +
            '<td><input type="checkbox" class="chk-chon-sv" data-masv="' + (sv.masv) + '"></td>' +
            '<td>' + (++stt) + '</td>' +
            '<td>' + (sv.masv) + '</td>' +
            '<td>' + (sv.ho) + '</td>' +
            '<td>' + (sv.ten) + '</td>' +
            '<td>' + (sv.lop) + '</td>' +
            '</tr>';
        }
        s += '</tbody></table>';
        $('#all-sv-here').html(s);
        //dùng thư viện datatable.min.js để cho phép bảng đc sắp xếp
        sort_table('#ds-sv');

        $('.nut-xoa-sv').off('click'); //fix bug
        $('.nut-xoa-sv').click(function () { xoa_sv_da_chon(); });
        $('.chk-chon-sv').on('change', function () {
          var masv = $(this).data('masv')
          if ($(this).is(':checked')) {
            $('tr#row-masv-' + masv).addClass('table-danger');
          } else {
            $('tr#row-masv-' + masv).removeClass('table-danger');
          }
        })
      });
  }
  function xoa_sv_da_chon() {

    var mang_se_xoa = [];
    var content = 'Xóa các sv sau:<ol>';
    $('.chk-chon-sv:checked').each(function (i, chk) {
      var masv = $(chk).data('masv');
      mang_se_xoa.push(masv);
      content += '<li id="se-xoa-masv-' + masv + '">' + masv + '</li>'
    });
    content += '</ol>'
    if (mang_se_xoa.length > 0) {
      function xoa_1_sv(masv) {
        //gửi tới api action + masv, chờ phản hồi
        wait_xoa_xong++
        $.post("api.aspx",
          {
            action: 'xoa_1_sv',
            masv:masv
          },
          function (data) {
            let rep = JSON.parse(data);
            wait_xoa_xong--
            if (rep.ok) {
              //gạch ngang tên sv đã đc xóa
              $('li#se-xoa-masv-' + masv).html(masv);
              $('li#se-xoa-masv-' + masv).addClass('gach-ngang');
            } else {
              //báo lỗi đỏ
              xoa_co_loi = true;
              $('li#se-xoa-masv-' + masv).html(masv+': KHÔNG XÓA ĐƯỢC VÌ: '+rep.msg);
              $('li#se-xoa-masv-' + masv).addClass('khong-xoa-dc');
            }
          });
      }
      var TieuDe = 'Xác nhận muốn xóa ' + mang_se_xoa.length + ' sv?';
      var dialog_xoa = $.confirm({
        closeIcon: true,
        type: 'red',
        typeAnimated: true,
        closeAnimation: 'scale',
        draggable: true,
        columnClass: 'small',
        title: TieuDe,
        content: content,
        buttons: {
          YES: {
            text: 'Xóa ngay',
            btnClass: 'btn-red',
            action: function () {
              //code gì ??
              //duyệt mảng_sẽ_xóa
              xoa_co_loi = false;
              wait_xoa_xong = 0;
              for (var masv of mang_se_xoa) {
                //cập nhật trạng thái: đang xóa
                //gửi đi tới api để y/c xóa
                //khi api phản hồi OK thì gạch ngang <=> đã xóa
                //not ok: báo đỏ: lỗi gì đó
                $('li#se-xoa-masv-' + masv).html(masv + ': Đang xóa...');
                xoa_1_sv(masv);
              }
              //đợi xóa xong thì dosth: ko có lỗi thì đóng dialog ngay, tải lại ds
              //xóa xong mà có lỗi thì ko làm gì: để người dùng nhìn lỗi
              var timer_wait=setInterval(function () {
                if (wait_xoa_xong == 0) {
                  clearInterval(timer_wait);
                  //chạy bất đồng bộ xong rồi
                  if (!xoa_co_loi) {
                    //đóng dialog lại, tải lại ds
                    load_all_sv();
                    dialog_xoa.close();
                  } else {
                    //ko làm gì
                  }
                }
              }, 100);
              return false; //ko đóng hộp thoại
            }
          },
          No: {
            text: 'Không, đừng xóa',
            btnClass: 'btn-blue',
            action: function () {

            }
          },
        }
      });
    }
  }

  load_all_sv(); //call nó ngay khi tải trang xong
});