google.charts.load('current', { 'packages': ['gauge'] });
$(document).ready(function () {
  function drawChart_nhietdo(t) {
    var data = google.visualization.arrayToDataTable([
      ['Label', 'Value'],
      ['Nhiệt độ', t],
    ]);
    var options = {
      width: 400, height: 120,
      redFrom: 90, redTo: 100,
      yellowFrom: 75, yellowTo: 90,
      minorTicks: 5
    };
    var chart = new google.visualization.Gauge(document.getElementById('chart-div'));
    chart.draw(data, options);
  }
  function get_so_de() {
    $('#kq').html('Đang lấy dữ liệu...')
    $.post("http://127.0.0.1:1880/sode",
      {},
      function (json) {
        var msg = json[0] + " là số này: <span class='xxx'>" + json[1] + '</span>'
        $('#kq').html(msg);        
      });//end ajax post
  }
  function list_sensor() {
    $.get("http://127.0.0.1:1880/list_sensor", {/*ko gửi gì*/ },
      function (json) {
        var s = '';
        for(var ss of json)s+='<option value="'+ss.id+'">'+ss.name+'</option>'
        $('#choice-sensor').html(s);
        get_sensor();  //tự gọi lần 1 của sensor trên cùng
      });//end ajax post
  }
  function get_sensor() {
    var url = "http://127.0.0.1:1880/get_sensor?id=" + $('#choice-sensor').val();
    $.get(url, { /* ko gửi gì! */ },
      function (json) {
        //khi tải xong, nhận đc phản hồi là json
        var s = json.value + '  at time: ' + json.time.replace('T', ' ').replace('Z', '');
        s += " min=" + json.min + " max=" + json.max;
        if (json.value > json.max) {
          var sos_text = "SOS " + json.name + " là " + json.value + " " + json.unit + ", cao quá ngưỡng " + json.max + " " + json.unit +" rồi";
          play_tts(sos_text)
          s += '<br><DIV class="sos">' + sos_text +'</DIV>'
        }
        $('#kq-ss').html(s);
        if (json.loai == 'nhietdo')drawChart_nhietdo(json.value) //loại này vì vẽ đồng hồ
        setTimeout(function () { get_sensor() },1000);
      });//end ajax post
  }
  var gtts_playing = 0;             //biến đánh dấu xem có đang bận play ko
  function playSound(url) {         //hàm này nhận 1 url audio để play
    if (gtts_playing) return;       //nếu đang bận playing thì thoát
    var audio = new Audio(url);     //tạo đối tượng để chuẩn bị play
    audio.play().then(() => {       //gọi play() và khi thực sự play thì:
      gtts_playing = 1;             //đánh dấu đang play
      console.log('mp3 play');      //debug ra console
    });                             //hết hàm play
    audio.addEventListener("ended", //đăng ký sự kiện play xong thì:
      function () {                 //play xong thì hàm này chạy
        gtts_playing = 0;           //bỏ đánh dấu bận => hết bận
        console.log('mp3 stop');    //debug ra cosole là stop rồi
    });                             //hết hàm xử lý stop
  }                                 //hết hàm playSound

  function play_tts(txt){               //nhận txt là chuỗi cần tts
    $.post("http://127.0.0.1:1880/mp3", //gọi API của nodered
      {txt:txt},                        //truyền lên chuỗi cần tts
      function (audio_fn) {             //nhận về tên file mp3
        playSound('/mp3/' + audio_fn);  //play url=file này trong thư mục mp3
        $('#kq-audio-mp3').html('đang play: ' + audio_fn) //show lên web (để debug là chính)
      });//end ajax post
  }
  $('.btn-sode').click(function () { get_so_de(); });
  $('.btn-sensor').click(function () { get_sensor(); });
  $('#choice-sensor').on("change", function () { get_sensor(); });

  $('.btn-audio-mp3').click(function () { play_tts($('#what_talk').val()); });

  list_sensor(); //tự gọi
}); //end ready