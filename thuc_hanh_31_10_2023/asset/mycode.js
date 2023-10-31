$(document).ready(function () {
  //code js here mẫu của jquery
  const api = '/api.aspx';
  function delete_company(id, json) {
    var cty;
    for (var item of json.data) {
      if (item.id == id) {
        cty = item;
        break;
      }
    }
    //xác nhận trước khi xóa
    var dialog_xoa = $.confirm({
      title: `Xác nhận xóa công ty ${cty.name}`,
      content: `Xác nhận xóa nhé????`,
      buttons: {
        YES: {
          action: function () {
            var data_gui_di = {
              action: 'delete_company',
              id: id, //gửi đi id của cty cần xóa: api, sp sẽ làm phần còn lại
            }
            $.post(api, data_gui_di, function (data) {
              //đợi data là json string text gửi về
              var json = JSON.parse(data); //json string text => obj
              if (json.ok) { //dùng obj
                dialog_xoa.close();
                cap_nhap_company();  //vẽ lại kq mới
              } else {
                alert(json.msg) // lỗi gì ở trên lo, ta cứ show ra thôi
              }
            })
          }
        },
        NO: {

        }
      }
    })
  }
  function edit_company(id, json) {
    //show 1 dialog: điền sẵn các thông của công ty cần edit
    //chờ bấm save -> gọi api: truyền đi các value đã bị edit -> nhận về json kết quả

    //json và id => cty
    var cty;
    for (var item of json.data) {
      if (item.id == id) {
        cty = item;
        break;
      }
    }
    var content = `form điền sẵn
    tên: <input type=text id="edit-name" value="${cty.name}"> <br>
    d/c: <input type=text id="edit-address" value="${cty.address}"> 
    `
    var dialog_edit = $.confirm({
      title: 'edit công ty',
      content: content,
      columnClass: 'large',
      buttons: {
        save: {
          action: function () {
            var data_gui_di = {
              action: 'edit_company',
              name: $('#edit-name').val(),
              address: $('#edit-address').val(),
              id: id,
              lat: 0,
              lng: 1,
              phone: '113',
              zalo: 'zzz'
            }
            //console.log(data_gui_di);
            $.post(api, data_gui_di, function (data) {
              var json = JSON.parse(data);
              if (json.ok) {
                dialog_edit.close();
                cap_nhap_company();
              } else {
                alert(json.msg)
              }
            })
          }
        },
        cancel: {

        }
      }
    })
  }

  function cap_nhap_company() {
    $.post(api,
      {
        action: 'list_company'
      },
      function (data) {
        //alert(data)
        var json = JSON.parse(data); //txt trong data -> obj json
        var noidung_ds_cty_html = "";
        if (json.ok) {
          noidung_ds_cty_html += `<table class="table table-hover">
              <thead>
              <tr>
                <th>STT</th>
                <th>Tên</th>
                <th>Đ/C</th>
                <th>Phone</th>
                <th>Sửa/xóa</th>
              </tr>
              </thead><tbody>`;
          //duyet json -> noidung_ds_cty_html xịn
          var stt = 0;
          for (var cty of json.data) {
            //sua_xoa là 2 nút: mỗi nút kèm theo data để sau này phân loại: là data-cid  và data-action
            var sua_xoa = `<button class="btn btn-sm btn-warning nut-sua-xoa" data-cid="${cty.id}" data-action="edit_company">Sửa</button>`;
            sua_xoa += ` <button class="btn btn-sm btn-danger nut-sua-xoa" data-cid="${cty.id}" data-action="delete_company">Xóa</button>`;
            noidung_ds_cty_html += `
                <tr>
                <td>${++stt}</td>
                <td>${cty.name}</td>
                <td>${cty.address}</td>
                <td>${cty.phone}</td>
                <td>${sua_xoa}</td>
              </tr>`;
          }

          noidung_ds_cty_html += "</tbody></table>";
        } else {

          noidung_ds_cty_html = "không có dữ liệu";
        }
        //đưa html vừa nối nối vào chỗ định trước: #ds_cong_ty
        $('#ds_cong_ty').html(noidung_ds_cty_html); //gán html vào thân dialog

        //trong html vừa đua vào có nhiều nút sửa và xóa, đều có class nut-sua-xoa
        //selector này tóm đc mọi nút
        $('.nut-sua-xoa').click(function () {
          //phân biệt các nút bằng data kèm theo
          var action = $(this).data('action')  //lấy action kèm theo
          var id = $(this).data('cid')  //lấy cid kèm theo
          if (action == 'delete_company') { //dùng action
            //can xac nhan
            delete_company(id, json); //dùng id vào đây để hàm này xử, cho khỏi rối code
          } else if (action == 'edit_company') {
            //ko can xac nhan
            edit_company(id, json);
          }
        });
      })
  }

  function add_company() {
    //show 1 dialog, các truongf để trông để user nhập
    //sau đó thu nhận các value đã input, có thể check đk trước khi gửi
    //gửi api, thu về json, ok=1 =>cap_nhap_company
    var content = `html form cho input các trường của 1 cty mới:..<hr>
    Name: <input id="nhap-name"><br>
    Address: <input id="nhap-address">
    `
    var dialog_add = $.confirm({
      title: 'THêm mới 1 công ty',
      content: content,
      buttons: {
        save: {
          text: 'Thêm cty vào db',
          action: function () {
            //sau đó thu nhận các value đã input, có thể check đk trước khi gửi
            //gửi api, thu về json, ok=1 =>cap_nhap_company
            var data_gui_di = {
              action: 'add_company',
              name: $('#nhap-name').val(),
              address: $('#nhap-address').val(),
              lat: 0,
              lng: 1,
              phone: '555',
              zalo: 'ttttttttzzz'
            }
            //console.log(data_gui_di);
            $.post(api, data_gui_di, function (data) {
              var json = JSON.parse(data);
              if (json.ok) {
                dialog_add.close();
                cap_nhap_company();
              } else {
                alert(json.msg)
              }
            });
          }//het save
        },
        xxx: {}
      }//button
    });
  }
  function list_company() {
    var dialog_list_company = $.confirm({
      title: "Ds công ty",
      content: `<div id="ds_cong_ty">loading...</div>`,
      columnClass: 'large',
      buttons: {
        add: {
          text: 'Thêm công ty',
          action: function () {
            add_company();
            return false; // ko đóng dialog_list_company
          }
        },
        close: {

        }
      },
      onContentReady: function () {
        //alert('dialog show ok')
        //hoi api: ds cong ty la json nao?
        cap_nhap_company(); //fill html vào thêm dialog tại div#ds_cong_ty
      }
    });
  }
  $('#nut-cong-ty').click(function () {
    list_company();
  });
});