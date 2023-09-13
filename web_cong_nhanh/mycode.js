$(document).ready(function () {
  $("#cong_nao").click(function () {
    $.post("api.aspx",
      {
        a: $('#soA').val(),
        b: $('#soB').val()
      },
      function (data, status) {
        var s = '<u>Kết quả là</u>: '+$('#soA').val() + '+' + $('#soB').val() + '=' + data;
        $('#ketqua').html(s);
      });
  });
});