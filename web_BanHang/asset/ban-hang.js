$(document).ready(function () {
  let data_hoadon, data_ds_kh, data_ds_nv, data_ds_hh;
  function get_time_now() {
    let d = new Date,
      dformat = [d.getDate(), d.getMonth() + 1, d.getFullYear()].join('/') + ' ' +
        [d.getHours(),
        d.getMinutes(),
        d.getSeconds()].join(':');
    return dformat;
  }
  function show_chitiet_hoadon(mahd) {
    let hd = null;
    for (let i in data_hoadon) if (data_hoadon[i].mahdb == mahd) hd = data_hoadon[i];
    let content = '<table width="100%"><tr><th colspan=2 style="text-align:center"><h1>HÓA ĐƠN BÁN HÀNG</h1></th></tr>' +
      '<tr>' +
      '<td width="20%">Nhân viên: </td>' +
      '<td>' + hd.tennv + ' ' + hd.sdtnv + '</td>' +
      '</tr>' +
      '<tr>' +
      '<td>Khách hàng: </td>' +
      '<td>' + hd.tenkh + ' ' + hd.sdtkh + '</td>' +
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
        '<td align=left>' + (hh.tenhh) + '</td>' +
        '<td align=center>' + (hh.dvt) + '</td>' +
        '<td align=right>' + (hh.dongia) + '</td>' +
        '<td align=center>' + (hh.sl) + '</td>' +
        '<td align=right>' + (hh.thanhtien) + '</td>' +
        '</tr>';
    }
    content += '<tr>' +
      '<td colspan=5 style="text-align:right">Tổng tiền: </td>' +
      '<td align=right>' + (hd.tongtien) + '</td>' +
      '</tr>' +
      '</table>' +
      '</td></tr></table>';
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
        print: {
          text: 'Print',
          btnClass: 'btn-blue',
          action: function () {
            let a = window.open('', '', 'height=500, width=500');
            a.document.write('<html><head><script src="asset/jquery.min.js"></script><link href="asset/bootstrap.min.css" rel="stylesheet" /><script src="asset/bootstrap.bundle.min.js"></script><link href="asset/jquery-confirm.css" rel="stylesheet" /><script src="asset/jquery-confirm.js"></script><link href="asset/mystyle.css" rel="stylesheet" /></head>');
            a.document.write('<body>');
            a.document.write(content);
            a.document.write('</body></html>');
            a.document.close();
            a.print();
            return false;
          }
        },
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
  function get_ds_hoa_don_ban() {
    let target_selector = '#ds-hoa-don-ban';
    $(target_selector).html('Đang tải ds hóa đơn bán...');
    $.post("api.aspx",
      {
        action: "get_ds_hoa_don_ban"
      },
      function (data) {
        let L = JSON.parse(data);
        if (L.ok) {
          data_hoadon = L.hoadon;
          if (L.hoadon) {
            let s = "<table class='vien_den'>";
            //H.maHDB, H.MaNV, V.TenNV, V.SDT as SDTNV, H.MaKH, K.TenKH, K.SDT as SDTKH, H.NgayBan, 
            s += "<tr><th>MãHD</th><th>Nhân viên</th><th>Khách hàng</th><th>Ngày bán</th><th>Tổng tiền</th></tr>";
            for (let hd of data_hoadon) {
              s += "<tr class='row-hoa-don-ban row-hover' data-mahdb='" + hd.mahdb + "'>";
              s += "<td>" + hd.mahdb + "</td>";
              s += "<td>" + hd.tennv + " " + hd.sdtnv + "</td>";
              s += "<td>" + hd.tenkh + " " + hd.sdtkh + "</td>";
              s += "<td>" + hd.ngayban.replace('T', ' ') + "</td>";
              s += "<td align=right>" + hd.tongtien + "</td>";
              s += "</tr>";
            }
            s += "</table>";
            s += "Danh sách gồm " + data_hoadon.length + " hóa đơn. Click vào từng dòng để xem chi tiết.";
            $(target_selector).html(s);  //cho chuỗi html trong biến s vào thẻ có id=ds-kh
            $('.row-hoa-don-ban').click(function () {
              let mahdb = $(this).data('mahdb');
              show_chitiet_hoadon(mahdb);
            });
          } else {
            $(target_selector).html('Không có dữ liệu');
          }
        }
      });
  }
  function get_ds_kh() {
    $.post("api.aspx",
      {
        action: "get_ds_kh"
      },
      function (data) {
        let L = JSON.parse(data);
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
        let L = JSON.parse(data);
        if (L.ok) {
          data_ds_nv = L.nhanvien;
        }
      });
  }
  function get_ds_hh() {
    $.post("api.aspx",
      {
        action: "get_ds_hh"
      },
      function (data) {
        let L = JSON.parse(data);
        if (L.ok) {
          data_ds_hh = L.hanghoa;
        }
      });
  }
  function form_add_hoa_don_ban_hang() {
    let option_khachhang = '';
    for (let item of data_ds_kh) {
      option_khachhang += '<option value="' + item.makh + '">' + item.tenkh + ' (' + item.sdt + ')</option>';
    }
    let option_nhanvien = '';
    for (let item of data_ds_nv) {
      option_nhanvien += '<option value="' + item.manv + '">' + item.tennv + ' ' + item.sdt + '</option>';
    }
    let content = '<table width="100%">' +
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
        '<td align=left><div class="input-group input-group"><input type="text" class="frm-mahh form-control" /><button data-stt="' + stt + '" class="btn-search-hh btn btn-info" type="submit">&gt;</button></div></td>' +
        '<td align=left class="frm-tenhh"></td>' +
        '<td align=center class="frm-dvt"></td>' +
        '<td align=center class="frm-dongia"></td>' +
        '<td align=right><input data-stt="' + stt + '" class="frm-sl form-control" type="number" value="1" style="text-align:center; width:100px" min=1 max=999/></td>' +
        '<td align=right class="frm-thanhtien"></td>' +
        '<td align=center><button class="frm-btn-xoa btn btn-danger btn-sm" data-stt="' + stt + '" title="Xóa dòng này">X</button></td>' +
        '</tr>';
    }
    content += '<tbody id="frm-body">' + one_row(stt) + '</tbody>';
    content += '<tfoot><tr>' +
      '<td colspan=6 style="text-align:right">Tổng tiền: </td>' +
      '<td align=right id="tongtien">0</td><td></td>' +
      '</tr></tfoot></table></div>';
    content += '</td></tr></table>';

    let get_hh_from_id = function (id) {
      let mahh = $('#row-' + id + ' .frm-mahh').val();
      let hh = null;
      for (let item of data_ds_hh) {
        if (item.mahh == mahh) {
          hh = item;
          break;
        }
      }
      return hh;
    }
    let btn_tra_cuu = function (id) {
      let hh = get_hh_from_id(id);
      $('#row-' + id).data('mahh', hh.mahh);
      $('#row-' + id + ' .frm-tenhh').html(hh ? hh.tenhh : '');
      $('#row-' + id + ' .frm-dvt').html(hh ? hh.dvt : '');
      $('#row-' + id + ' .frm-dongia').html(hh ? hh.dongia : '');
      let sl = $('#row-' + id + ' .frm-sl').val();
      if (hh)
        hh.thanhtien = parseInt(sl) * parseFloat(hh.dongia);
      $('#row-' + id + ' .frm-thanhtien').html(hh ? hh.thanhtien : '');
      update_tongtien();
      let n = $('#frm-body tr').length;
      if (id == n) {
        them_chi_tiet();
      }
    }
    let change_soluong = function (id) {
      let hh = get_hh_from_id(id);
      if (hh) {
        let sl = $('#row-' + id + ' .frm-sl').val();
        hh.thanhtien = parseInt(sl) * parseFloat(hh.dongia);
      }
      $('#row-' + id + ' .frm-thanhtien').html(hh ? hh.thanhtien : '');
      update_tongtien();
    }
    let them_chi_tiet = function () {
      $('#frm-body').append(one_row(++stt));
      $('#frm-body .frm-btn-xoa').off('click');
      $('#frm-body .frm-btn-xoa').click(function () {
        stt--;
        let id = $(this).data('stt');
        $('#frm-body tr#row-' + id).remove();
        $('#frm-body tr').each(function (i, item) {
          $(item).attr("id", "row-" + (i + 1));
        });
        $('#frm-body .frm-stt').each(function (i, item) {
          $(item).html(i + 1)
        });
        $('#frm-body .frm-btn-xoa').each(function (i, item) {
          $(item).data('stt', i + 1)
        });
        $('#frm-body .frm-sl').each(function (i, item) {
          $(item).data('stt', i + 1)
        });
        $('#frm-body .btn-search-hh').each(function (i, item) {
          $(item).data('stt', i + 1)
        });
        update_tongtien();
      });
      $('#frm-body .btn-search-hh').off('click');
      $('#frm-body .btn-search-hh').click(function () {
        let id = $(this).data('stt');
        btn_tra_cuu(id);
      });
      $('#frm-body .frm-sl').change(function () {
        let id = $(this).data('stt');
        change_soluong(id);
      });
    }
    let update_tongtien = function () {
      let sum = 0;
      $('#frm-body tr').each(function (i, tr) {
        let idr = $(tr).attr('id');
        let dg = $('#' + idr + ' .frm-dongia').text();
        let sl = $('#' + idr + ' .frm-sl').val();
        if (!isNaN(dg)) {
          sum += (sl * dg);
        }
      });
      $('#tongtien').html(sum);
    }
    let luu_hoa_don = function () {
      let chitiet = [];
      $('#frm-body tr').each(function (i, tr) {
        let idr = $(tr).attr('id');
        let mahh = $('#' + idr).data('mahh');
        let dongia = $('#' + idr + ' .frm-dongia').text();
        let sl = $('#' + idr + ' .frm-sl').val();
        if (dongia != '' && !isNaN(dongia)) {
          let item = { mahh: mahh, sl: parseInt(sl), dongia: parseFloat(dongia) };
          chitiet.push(item)
        }
      });
      let manv = $('#chon-nhan-vien').val();
      let makh = $('#chon-khach-hang').val();
      let hoadon = {
        manv: parseInt(manv),
        makh: parseInt(makh),
        chitiet: chitiet
      };
      $.post("api.aspx",
        {
          action: 'add_hoa_don_ban',
          data: JSON.stringify(hoadon)
        },
        function (data) {
          let L = JSON.parse(data);
          if (L.ok) {
            get_ds_hoa_don_ban();
            dialog_add.close();
          }
        });
    }
    let timer_time_now;
    let dialog_add = $.confirm({
      bgOpacity: 0.85,
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
            them_chi_tiet();
            return false;
          }
        },
        save: {
          text: 'Lưu hóa đơn',
          btnClass: 'btn-blue',
          action: function () {
            luu_hoa_don();
            return false;
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
        $('#frm-body .btn-search-hh').click(function () {
          let id = $(this).data('stt');
          btn_tra_cuu(id);
        });
        $('#frm-body .frm-sl').change(function () {
          let id = $(this).data('stt');
          change_soluong(id);
        });
      },
      onClose: function () {
        if (timer_time_now) clearInterval(timer_time_now);
      },
    });
  }
  $('#btn-add-hoa-don-ban-hang').click(function () {
    form_add_hoa_don_ban_hang()
  });
  get_ds_hoa_don_ban(); //gọi luôn
  get_ds_kh();
  get_ds_nv();
  get_ds_hh();
});