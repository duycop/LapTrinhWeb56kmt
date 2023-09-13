$(document).ready(function () {
  function get_ds_kh() {
    $('#ds-kh').html('Đang tải ds khách hàng...');
    $.post("api.aspx",
      {
        action: "ds_kh"
      },
      function (data) {
        //data là json string
        //cần json string -> json object
        var L = JSON.parse(data);
        //duyệt từng phần tử k trong L để ghép thành 1 chuỗi html
        var s = "<table class='vien_den'>";
        s += "<tr><th>STT</th><th>Họ và tên</th><th>SĐT</th><th>Địa chỉ</th><th>CCCD</th></tr>";
        var stt = 0;
        for (var k of L) {
          stt++;
          s += "<tr>";
          s += "<td>" + stt + "</td>";
          s += "<td>" + k.tenkh + "</td>";
          s += "<td><a href='tel:" + k.sdt + "'>" + k.sdt + "</a></td>";
          s += "<td>" + k.diachi + "</td>";
          s += "<td>" + k.cccd + "</td>";
          s += "</tr>";
        }
        s += "</table>";
        s += "Danh sách gồm " + L.length + " khách hàng";
        $('#ds-kh').html(s);  //cho chuỗi html trong biến s vào thẻ có id=ds-kh
      });
  }

  //define function for action='them_kh'
  function them_kh() {
    //show ra 1 hộp thoại: có 4 trường cần nhập cho 1 kh mới
    var dialog_add = $.confirm({
      closeIcon: true,
      type: 'blue',
      typeAnimated: true,
      draggable: true,
      columnClass: 's',
      title: 'Thêm khách hàng mới!',
      content: '<table>' +
        '<tr>' +
        '<td align=right>Tên khách hàng:</td>' +
        '<td><input type="text" id="kh-tenkh" required /></td>' +
        '</tr>' +
        '<tr>' +
        '<td align=right>SĐT:</td>' +
        '<td><input type="text" id="kh-sdt" required /></td>' +
        '</tr>' +
        '<tr>' +
        '<td align=right>Địa chỉ:</td>' +
        '<td><input type="text" id="kh-diachi" required /></td>' +
        '</tr>' +
        '<tr>' +
        '<td align=right>CCCD:</td>' +
        '<td><input type="text" id="kh-cccd" required /></td>' +
        '</tr></table>',
      buttons: {
        formSubmit: {
          text: 'Thêm Khách hàng vào CSDL',
          btnClass: 'btn-blue',
          action: function () {
            //lấy được thông tin mà người dùng nhập vào
            //gửi đi kèm action='them_kh'
            //đợi phản hồi: ok thì gọi hàm get_ds_kh()
            var send_data = {
              action: 'them_kh',
              tenkh: $('#kh-tenkh').val(),
              sdt: $('#kh-sdt').val(),
              diachi: $('#kh-diachi').val(),
              cccd: $('#kh-cccd').val(),
            }

            $.post("api.aspx",
              send_data,
              function (data) {
                var json = JSON.parse(data);
                if (json.ok) {
                  //ok thì tải lại ds kh
                  get_ds_kh();
                  //đóng bố lại
                  dialog_add.close();
                } else {
                  //thông báo lỗi
                  $.dialog({
                    title: 'Báo lỗi',
                    type: 'red',
                    content: json.error,
                  });
                }
              });
            return false;// ko đóng dialog bố
          }
        },
        cancel: {
          text: 'Đóng',
          btnClass: 'btn-red',
          action: function () {
            //close
          }
        },
      },
      onContentReady: function () {
        $('#kh-tenkh').focus();
      }
    });
  }

  //hàm them_kh đc gọi khi nút có id='them-kh' đc click
  $("#them-kh").click(function () { them_kh(); });

  get_ds_kh(); //gọi hàm get ds kh mà ko cần đk gì:
  //vào trang là tải luôn ds kh


});