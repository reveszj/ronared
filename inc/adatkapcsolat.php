<?
$domain = $_SERVER['HTTP_HOST'];

if ($domain != 'localhost'){
	$kapcsolat = mysql_connect("sql", "client1369u962", "Ivancsics962");
	if (!$kapcsolat) {die('Hiba a MySQL szerverhez kapcsol�d�s k�zben: ' . mysql_error());}
	$adatbazis = mysql_select_db("client1369dbvari");
	if (!$adatbazis) {die('Hiba az adatb�zis el�r�sekor: ' . mysql_error());}
	$ekezet = mysql_set_charset("latin2",$kapcsolat);}

else {

	$kapcsolat = mysql_connect("localhost", "root", "");
	if (!$kapcsolat) {die('Hiba a MySQL szerverhez kapcsol�d�s k�zben: ' . mysql_error());}
	$adatbazis = mysql_select_db("ronared");
	if (!$adatbazis) {die('Hiba az adatb�zis el�r�sekor: ' . mysql_error());}
	$ekezet = mysql_set_charset("latin2",$kapcsolat);

}
$_SESSION[adattabla_etag] = 'ronared_';
?>