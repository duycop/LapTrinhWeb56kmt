$(document).ready(function(){ 	   //khi trang tải xong
	$('#nut-xem').click(function(){  //khi button #nut-xem được click
		$.post('api.php',	           //gửi tới file api.php ở back-end để xử lý
		{							
			action: 'xem_diem',	   //gửi lên api 2 giá trị
			masv: $('#masv').val()	   //là action và masv
		},
		function(data,status){	   //hàm được chạy khi api trả về dữ liệu
			//console.log([data,status]) //test done đúng ý
			$('#kq').html(data)	   //hiển thị dữ liệu nhận đc ra nơi có id='kq'
		});				   //đóng function data
	});                              //đóng $.post
});                                //đóng $.ready