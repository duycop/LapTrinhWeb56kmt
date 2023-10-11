$(document).ready(function () {
  //$(".canh_quat").draggable()
  //$("#bom1, #bom2").draggable()
  //$(".time").draggable()
  $('.nut-dk').click(function () {
    var bomid = $(this).data('bomid');
    var muongi = $(this).data('muongi'); //on off === class muốn hướng tới
    var dao_muon = (muongi == 'on' ? 'off' : 'on');
    //bom tại id=bomid : on thì: phải chứa class on => css làm hết phần còn lại
    var id = '#bom' + bomid;
    $(id).removeClass(dao_muon).addClass(muongi);
  });  
  $('.bom').click(function () {
    var bomid = $(this).data('bomid');
    //lấy đc trạng thái hiện tại
    //gửi yêu cầu đảo trạng thái hiện tại hoặc ko cần lấy hiện tại, yêu cầu db đảo
    $.post('api.aspx',
      {
        action: 'control_invert',
        id: bomid
      },
      function (data) {
        //chả cần làm gì
      });
  });
  function monitor() {
    $.post('api.aspx',
      {
        action: 'monitor'
      },
      function (data) {
        //console.log(data); //ok debug ra console đúng ý rồi
        var json = JSON.parse(data);
        if (json.ok) {
          for (var bom of json.data) {
            var id = '#bom' + bom.id;
            var muongi = bom.status == 1 ? "on" : "off";
            var dao_muon = bom.status == 0 ? "on" : "off";
            $(id).removeClass(dao_muon).addClass(muongi);
            //hh:mm:ss
            var ss = bom.ss;
            var mm = parseInt(ss / 60) % 60;
            var hh = parseInt(ss / 60 / 60) % 24;
            var time = '';
            if (hh > 0) time = hh + "<sup>h</sup>";
            time += mm + "'" + ss % 60 + '"';
            var str = "Đã " + muongi + " " + time + " trước";
            $(id + ' .time').html(str)
          }
        } else {
          console.log(json.msg);
        }
      }
    );
  }
  setInterval(function () { monitor();  }, 1000);
}); //end ready