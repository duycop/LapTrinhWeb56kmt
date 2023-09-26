<?php
	function xem_diem($masv){
		$serverName = 'LAPTOP-DUYCOP\SQLEXPRESS';
		$connectionInfo = array( "Database"=>"svKMT_tnut", "UID"=>"sa", "PWD"=>"123", "CharacterSet" => "UTF-8");
		$conn = sqlsrv_connect( $serverName, $connectionInfo);
		if( $conn === false) {
			die( print_r( sqlsrv_errors(), true));
		}
		$sql = "select * from sv where stt=$masv";
		$stmt = sqlsrv_query( $conn, $sql );
		$row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC);
		if($row){
			$ho = @$row["ho"];
			$ten= @$row["ten"];
			echo "Sinh viên $ho $ten có điểm là {$row['diem']}";
		}else{
			echo "ko tồn tại mã sv này";
		}
	}//end function
	#--------------main--------------------------
	$action = $_POST['action'];
	if($action=="xem_diem"){
		$masv = $_POST['masv'];
		xem_diem($masv);
	}