$(document).ready(function () {
  function form_login() {
    console.log('login form show nào...')
    //show nút login
    $('#cmd-login').show();
    //ẩn welcome
    $('#welcome-user').hide();
    noi_dung_login = `
<span class="login100-form-title">
Member Login
</span>
<div>
<input class="dai-vua-vua" type="text" id="masv" placeholder="Mã SV">
</div>
<div>
<input class="dai-vua-vua" type="password" id="pw" placeholder="Password">
</div>
<div id='dang-nhap-sai'></div>
    `;
    var dialog_login = $.confirm({
      title: 'Đăng nhập',
      content: noi_dung_login,
      buttons: {
        OK: {
          text: "Đăng nhập",
          keys: ['enter'],
          btnClass: 'btn-blue',
          action: function () {
            check_login();
            return false; //để hộp thoại nó ko đóng
          }
        },
        Cancel: {
          text: "Hủy",
          btnClass: 'btn-red',
        }
      }
    });
    function check_login() {
      //lấy dc masv+pw người dùng nhập
      var masv = $('#masv').val();
      var pw = $('#pw').val();

      $.post('api.aspx',
        {
          action: 'login',
          masv: masv,
          pw: pw
        },
        function (data) {
          var json = JSON.parse(data);
          if (json.ok) {
            //chào
            chao_hoi(json);
            //lưu cookie
            setCookie("masv",json.masv, 0)
            setCookie("cc", json.cc, 0)
            dialog_login.close(); //đóng form lại vì nó hoàn thành nhiệm vụ rồi
          } else {
            //show form login
            //form_login(); //form ko đóng, nên ko cần show mới
            $('#dang-nhap-sai').html(json.msg)
          }
        }
      )
    }
  }

  function chao_hoi(json) {
    if (json.ok) {
      $('#welcome-user').html("Xin chào " + json.hoten);
      $('#welcome-user').show();
      $('#cmd-login').hide();
      $('#cmd-logout').show();
    } else {
      $('#welcome-user').html('');
      $('#welcome-user').hide();
      $('#cmd-login').show();
      $('#cmd-logout').hide();
    }
  }
  function check_cc() {
    //nếu ko có cc thì ko cần gửi
    //gửi cc(nếu có) lên api
    //nhận về OK: chào hoten
    //nếu not ok: show form login
    //var cc = getCookie('cc');
    //var masv = getCookie('masv');
    //if (cc && masv)
    if(1==1)
    {
      console.log('check cc trên api xem cc này ok ko?')
      $.post('api.aspx',
        {
          action: 'check_cc',
          //masv: masv,  //cookie thì auto gửi, ko cần coder gửi
          //cc: cc
        },
        function (data) {
          var json = JSON.parse(data);
          if (json.ok) {
            chao_hoi(json);
          } else {
            //show form login
            form_login();
          }
        }
      )
    } else {
      console.log('ko thấy cc trên máy nên ko gửi lên api')
      form_login();
    }
  }
  function do_logout() {
    eraseCookie("masv");
    eraseCookie("cc");
    chao_hoi({ok:false})
    form_login();
  }
  $('#cmd-login').click(function(){ form_login(); });
  $('#cmd-logout').click(function(){ do_logout(); });
  check_cc(); //tự gọi hàm này mỗi khi tải trang xong
}); //end ready