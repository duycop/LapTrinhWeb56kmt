$(document).ready(function () {
  var data_hoadon, data_ds_kh, data_ds_nv;
  function get_ds_hoa_don_ban() {
    var target_selector = '#ds-hoa-don-ban';
    $(target_selector).html('Đang tải ds hóa đơn bán...');
    $.post("api.aspx",
      {
        action: "get_ds_hoa_don_ban"
      },
      function (data) {
        var L = JSON.parse(data);
        data_hoadon = L.hoadon;
        var s = "<table class='vien_den'>";
        //H.maHDB, H.MaNV, V.TenNV, V.SDT as SDTNV, H.MaKH, K.TenKH, K.SDT as SDTKH, H.NgayBan, 
        s += "<tr><th>MãHD</th><th>Nhân viên</th><th>Khách hàng</th><th>Ngày bán</th><th>Tổng tiền</th></tr>";
        var stt = 0;
        for (var hd of data_hoadon) {
          stt++;
          s += "<tr class='row-hoa-don-ban row-hover' data-mahdb='" + hd.mahdb + "'>";
          s += "<td>" + hd.mahdb + "</td>";
          s += "<td>" + hd.tennv + " (" + hd.sdtnv + ")</td>";
          s += "<td>" + hd.tenkh + " (" + hd.sdtkh + ")</td>";
          s += "<td>" + hd.ngayban.replace('T', ' ') + "</td>";
          s += "<td align=right>" + hd.tongtien + "</td>";
          s += "</tr>";
        }
        s += "</table>";
        s += "Danh sách gồm " + data_hoadon.length + " hóa đơn. Click vào từng dòng để xem chi tiết.";
        $(target_selector).html(s);  //cho chuỗi html trong biến s vào thẻ có id=ds-kh
        $('.row-hoa-don-ban').click(function () {
          var mahdb = $(this).data('mahdb');
          show_chitiet_hoadon(mahdb);
        });
      });
  }
  function show_chitiet_hoadon(mahd) {
    let hd = null;
    for (let i in data_hoadon) if (data_hoadon[i].mahdb == mahd) hd = data_hoadon[i];
    let content = '<table width="100%">' +
      '<tr>' +
      '<td width="20%">Nhân viên: </td>' +
      '<td>' + hd.tennv + ' (' + hd.sdtnv + ')</td>' +
      '</tr>' +
      '<tr>' +
      '<td>Khách hàng: </td>' +
      '<td>' + hd.tenkh + ' (' + hd.sdtkh + ')</td>' +
      '</tr>' +
      '<tr>' +
      '<td>Ngày bán: </td>' +
      '<td>' + hd.ngayban.replace('T', ' ') + '</td>' +
      '</tr>' +
      '<tr><td colspan=2>' +
      '<table class="vien_den" width="100%">' +
      '<tr><th>STT</th><th>Tên Hàng</th><th>ĐVT</th><th>Đơn giá</th><th>Số lượng</th><th>Thành tiền</th></tr>';
    //maHH, TenHH, DVT, DonGiaBan, SoLuongBan, ThanhTien
    let stt = 0;
    for (let hh of hd.chitiet) {
      stt++;
      content += '<tr>' +
        '<td align=center>' + (stt) + '</td>' +
        '<td>' + (hh.tenhh) + '</td>' +
        '<td align=center>' + (hh.dvt) + '</td>' +
        '<td align=right>' + (hh.dongia) + '</td>' +
        '<td align=center>' + (hh.sl) + '</td>' +
        '<td align=right>' + (hh.thanhtien) + '</td>' +
        '</tr>';
    }
    content += '<tr>' +
      '<td colspan=5 style="text-align:right">Tổng tiền: </td>' +
      '<td align=right>' + (hd.tongtien) + '</td>' +
      '</tr>';
    content += '</table>' +
      '</td>' +
      '</tr>' +
      '</table>';
    $.confirm({
      closeIcon: true,
      type: 'blue',
      typeAnimated: true,
      closeAnimation: 'scale',
      draggable: true,
      columnClass: 'l',
      title: 'Chi tiết hóa đơn #' + mahd,
      content: content,
      buttons: {
        ok: {
          text: 'Đóng',
          btnClass: 'btn-red',
          action: function () {
            //close
          }
        },
      },
      onContentReady: function () {

      }
    });
  }

  function get_time_now() {
    var d = new Date,
      dformat = [d.getDate(), d.getMonth() + 1, d.getFullYear()].join('/') + ' ' +
        [d.getHours(),
        d.getMinutes(),
        d.getSeconds()].join(':');
    return dformat;
  }
  function form_add_hoa_don_ban_hang() {
    let option_khachhang = '';
    for (let item of data_ds_kh) {
      option_khachhang += '<option value="' + item.makh + '">' + item.tenkh + ' (' + item.sdt + ')</option>';
    }
    let option_nhanvien = '';
    for (let item of data_ds_nv) {
      option_nhanvien += '<option value="' + item.manv + '">' + item.tennv + ' (' + item.sdt + ')</option>';
    }
    var content = '<table width="100%">' +
      '<tr>' +
      '<td width="15%">Nhân viên: </td>' +
      '<td><select id="chon-nhan-vien" class="form-control">' + option_nhanvien + '</select></td>' +
      '</tr>' +
      '<tr>' +
      '<td>Khách hàng: </td>' +
      '<td><select id="chon-khach-hang" class="form-control">' + option_khachhang + '</select></td>' +
      '</tr>' +
      '<tr>' +
      '<td>Ngày bán: </td>' +
      '<td class="time-now">' + get_time_now() + '</td>' +
      '</tr>' +
      '<tr><td colspan="2"><div style="max-height:300px !important; overflow-y: scroll !important;">' +
      '<table class="vien_den" width="100%">' +
      '<thead>' +
      '<tr><th width=10>STT</th><th width=150>Mã hàng</th><th>Tên hàng</th><th width=30>ĐVT</th><th width=100>Đơn giá</th><th width=100>SL</th><th width=100>Thành tiền</th><th width=10>Xóa</th></tr>' +
      '</thead>';
    let stt = 1;
    let one_row = function (stt) {
      return '<tr id="row-' + stt + '">' +
        '<td align=center class="frm-stt">' + stt + '</td>' +
        '<td align=left><div class="input-group input-group"><input type="text" class="frm-mahh form-control" /><button class="btn-search-hh btn btn-success" type="submit">&gt;</button></div></td>' +
        '<td class="frm-tenhh"></td>' +
        '<td align=center class="frm-dvt"></td>' +
        '<td align=center class="frm-dongia"></td>' +
        '<td align=right><input class="frm-sl form-control" type="number" value="1" style="text-align:center; width:100px" min=1 max=999/></td>' +
        '<td align=right class="frm-thanhtien"></td>' +
        '<td align=center><button class="frm-btn-xoa btn btn-danger btn-sm" data-stt="' + stt + '">X</button></td>' +
        '</tr>';
    }
    content += '<tbody id="frm-body">' + one_row(stt) + '</tbody>';
    content += '<tfoot><tr>' +
      '<td colspan=6 style="text-align:right">Tổng tiền: </td>' +
      '<td align=right id="tongtien">0</td><td></td>' +
      '</tr></tfoot></table></div>';
    content += '</td></tr></table>';

    var get_hh_from_id=function(id){
      var mahh = $('#row-' + id + ' .frm-mahh').val();
      var hh = null;
      for (var item of data_ds_hh) {
        if (item.mahh == mahh) {
          hh = item;
          break;
        }
      }
      return hh;
    }
    var update_tongtien = function () {
      $('#frm-body tr').each(function (i, tr) {
        var idr = $(tr).id;
        var dg = $('#' + idr + ' .frm-dongia').text();
        var sl = $('#' + idr + ' .frm-sl').val();
        console.log([dg,sl]);
      });
    }
    var btn_tra_cuu = function (id) {
      var hh = get_hh_from_id(id);
      $('#row-' + id + ' .frm-tenhh').html(hh ? hh.tenhh : '');
      $('#row-' + id + ' .frm-dvt').html(hh ? hh.dvt : '');
      $('#row-' + id + ' .frm-dongia').html(hh ? hh.dongia : '');
      var sl = $('#row-' + id + ' .frm-sl').val();
      if (hh)
        hh.thanhtien = parseInt(sl) * parseFloat(hh.dongia);
      $('#row-' + id + ' .frm-thanhtien').html(hh ? hh.thanhtien : '');
      update_tongtien();
    }
    var change_soluong = function (id) {
      var hh = get_hh_from_id(id);
      if (hh) {
        var sl = $('#row-' + id + ' .frm-sl').val();
        hh.thanhtien = parseInt(sl) * parseFloat(hh.dongia);
      }
      $('#row-' + id + ' .frm-thanhtien').html(hh ? hh.thanhtien : '');
      update_tongtien();
    }
    var timer_time_now;
    $.confirm({
      bgOpacity: 0.85,
      boxWidth: '50%',
      closeIcon: true,
      type: 'blue',
      typeAnimated: true,
      closeAnimation: 'scale',
      draggable: true,
      columnClass: 'xl',
      title: '<b>Thêm hóa đơn</b>',
      content: content,
      buttons: {
        add: {
          text: 'Thêm chi tiết',
          btnClass: 'btn-green',
          action: function () {
            $('#frm-body').append(one_row(++stt));
            $('#frm-body .frm-btn-xoa').off('click');
            $('#frm-body .frm-btn-xoa').click(function () {
              stt--;
              var id = $(this).data('stt');
              $('#row-' + id).remove();
              $('#frm-body tr').each(function (i, tr) {
                $(tr).attr("id", "row-"+(i+1));
              });
              $('#frm-body .frm-stt').each(function (i, td) {
                $(td).html(i + 1)
              });
              $('#frm-body .frm-btn-xoa').each(function (i, btn) {
                $(btn).data('stt', i + 1)
              });
            });
            return false;
          }
        },
        save: {
          text: 'Lưu hóa đơn',
          btnClass: 'btn-blue',
          action: function () {
            //close
          }
        },
        close: {
          text: 'Đóng',
          btnClass: 'btn-red',
          action: function () {
            //close
          }
        },
      },
      onContentReady: function () {
        timer_time_now = setInterval(function () {
          $('.time-now').html(get_time_now());
        }, 1000);
      },
      onClose: function () {
        if (timer_time_now) clearInterval(timer_time_now);
      },
    });
  }


  function get_ds_kh() {
    $.post("api.aspx",
      {
        action: "get_ds_kh"
      },
      function (data) {
        var L = JSON.parse(data);
        if (L.ok) {
          data_ds_kh = L.khachhang;
        }
      });
  }
  function get_ds_nv() {
    $.post("api.aspx",
      {
        action: "get_ds_nv"
      },
      function (data) {
        var L = JSON.parse(data);
        if (L.ok) {
          data_ds_nv = L.nhanvien;
        }
      });
  }
  $('#btn-add-hoa-don-ban-hang').click(function () { form_add_hoa_don_ban_hang() });
  get_ds_hoa_don_ban(); //gọi luôn
  get_ds_kh();
  get_ds_nv();
});