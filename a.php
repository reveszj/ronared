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
	//belép
	if ($_REQUEST[tartalom]){
		include('admin/'.$_REQUEST[tartalom].'.php');
	} else {
		include('admin/admin_cimlap.php');
	}
	$smarty->assign('admin_torzs', $admin_torzs);
	$smarty->display('admin.html');	
}
else {
	//nem lép be
	if ($_REQUEST[submit]) $smarty->assign('belephiba', "Rossz felhasználónév, vagy jelszó!");		
	$smarty->display('login.html');	
}
?>