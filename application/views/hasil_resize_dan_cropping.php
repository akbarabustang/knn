<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>

	<style type="text/css">

	::selection { background-color: #E13300; color: white; }
	::-moz-selection { background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		margin: 40px;
		font: 13px/20px normal Helvetica, Arial, sans-serif;
		color: #4F5155;
	}

	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
	}

	h1 {
		color: #444;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 22px;
		font-weight: normal;
		text-align: center;
		line-height:25px;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body {
		margin: 0 50px 0 50px;

	}

	p.footer {
		text-align: center;
		font-size: 14px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 50px 0 0 0;
		line-height:20px;
	}

	#container {
		margin: 10px;
		border: 1px solid #D0D0D0;
		box-shadow: 0 0 8px #D0D0D0;
	}

	#logo{

		text-align: center;
	}

	.tombol{
		background:#2C97DF;
  		color:white;
  		border-top:0;
  		border-left:0;
  		border-right:0;
  		border-bottom:5px solid #2A80B9;
  		padding:10px 20px;
 		text-decoration:none;
  		font-family:sans-serif;
  		font-size:11pt;
	}

	</style>
</head>

<body>

<div id="container">
	<font face="Cooper Black" ><h1> <br> HASIL RESIZE DAN CROPPING GAMBAR <br> <br> </h1></font>

	<div id="body">

		<div>
			<h1> <br> Gambar Hasil Resize 50x50 Pixel <br> <br> </h1> <br> <br><br> <br>
		</div>

		<div>
			<h1> <br> Gambar Hasil Cropping <br> <br> </h1><br> <br><br> <br>
		</div><br>

		<div>
			<center><a href="#" class='tombol'>Konversi RGB ke HSV</a><br></center><br> <br>
		</div>

	</div>

</div>

<img src="<?php echo base_url ()?>public/uploads/img/testing.jpg" alt="">

</body>
</html>