<?php
session_start();

include('inc/adatkapcsolat.php');
include('inc/class.php');
include('inc/menu.php');
include('inc/tartalomvalaszto.php');
include('inc/uzenet.php');
include('inc/dokumentumok.php');

$array = array( 'menu' => $menu,
				'tartalom' => $tartalom_php,
				'dokumentumok' => $dokumentumok,
				'oldalmenu' => $oldalmenu,
				'kulcsszo'	=> $kulcsszo,				
				'oldalcim' => $oldalcim,
				'leiras' => $leiras,
				'slide' => $slide,
				'body_class' => $body_class,
				'ido' => $ido,
				'nevek' => $nevek);				
				
$index_html = new html_blokk;
$index_html->load_template_file("templates/index.html",$array);
echo $index_html->html_code;
?>