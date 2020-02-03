<?php
	// Connect to database
$host = "localhost";
$user = "root";
$pass = "";
$database = "produksi";

	$connect = mysqli_connect($host,$user,$pass);
	mysqli_select_db($connect,$database);
	
	//cek koneksi
	if($connect){
		echo "Berhasil Terhubung";
	}else{
		echo "Gagal Terhubung";
		}
	
	
?>