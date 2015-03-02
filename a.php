<?php 
session_start();
require_once('parameters.php');
require_once('class/class.php');
require_once('class/functions.php');
require_once('smarty.php');

$smarty = new Smarty();

$adatkapcsolat = new data_connect;
$adatkapcsolat->connect();

$user = new user;
$user->login();

if ($_SESSION["sessfelhasznalojog"] == "1") {
	//bel�p
	if ($_REQUEST[tartalom]){
		include('admin/'.$_REQUEST[tartalom].'.php');
	} else {
		include('admin/admin_cimlap.php');
	}
	$smarty->assign('admin_torzs', $admin_torzs);
	$smarty->display('admin.html');	
}
else {
	//nem l�p be
	if ($_REQUEST[submit]) $smarty->assign('belephiba', "Rossz felhaszn�l�n�v, vagy jelsz�!");		
	$smarty->display('login.html');	
}
?>