﻿google.charts.load('current', { 'packages': ['gauge'] });
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
        var s = json.Value + '  at time: ' + json.Time.replace('T', ' ').replace('.000Z', '');
        $('#kq-ss').html(s);
        if (json.loai == 'nhietdo')drawChart_nhietdo(json.Value) //loại này vì vẽ đồng hồ
        setTimeout(function () { get_sensor() },1000);
      });//end ajax post
  }
  $('.btn-sode').click(function () { get_so_de(); });
  $('.btn-sensor').click(function () { get_sensor(); });
  $('#choice-sensor').on("change", function () { get_sensor(); });
  list_sensor(); //tự gọi
}); //end ready