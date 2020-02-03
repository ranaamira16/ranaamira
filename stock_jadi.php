<?php
include "Stock.php";

 $id_stock = $_POST ["id_stock"];
 $terjual = $_POST ["terjual"];
 $sisa = $_POST ["sisa"];
 $tanggal = $_POST ["tanggal"];
 $Barang_id_barang = $_POST ["Barang_id_barang"];
 
 $q_simpan = "insert into stock_jadi(id_stock,terjual,sisa,tanggal, Barang_id_barang) values('$id_stock','$terjual','$sisa','$tanggal','$Barang_id_barang')";
	$hasil = mysqli_query($connect,$q_simpan);
	var_dump($hasil);
		//cek masuk atau tidak
	if($hasil){
	echo "Data Berhasil Masuk";
	}
	 else{
 	echo "Data Gagal Masuk";
	 }
	
 

?>