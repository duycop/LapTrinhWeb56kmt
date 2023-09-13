$(document).ready(function () {
  $("#nut").click(function () {
    var data = {
      a: $('#s1').val(),
      b: $('#s2').val(),
      c: $('#s3').val(),
    }
    $.post("api.aspx",
      data,
      function (res) {
        $('#ketqua').html(res);
      });
  });
});