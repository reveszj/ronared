<?php
$result = mysql_query("SELECT file, title_hu FROM ".$_SESSION[adattabla_etag]."dokumentumok  ORDER BY id DESC");
while($next_element = mysql_fetch_array($result))	{
	$dokumentumok .= "\n".'<li><a href="docs/'.$next_element[file].'" download="'.$next_element[file].'">'.$next_element[title_hu].'</a></li>';
}
?>