<?
If ($_REQUEST[ujkepment] == '1'){
		#k�pfile felt�lt�se
		$result = mysql_query("SELECT MAX(id) FROM ".$_SESSION[adattabla_etag]."dokumentumok");
		if (is_resource($result)) {
			$row = mysql_fetch_array($result); 
			$num_rows=$row[0];
			$num_rows++;}
		else {
			$num_rows = 1;}
		
		$konyvtar = 'docs/';
		foreach($_FILES as $allomanynev => $all_tomb) {
			$fajlnev_n = strtr($all_tomb['name'],' ,;:?*#!�$%&/(){}<>=`�|\\\'"������������������','__________________________aeiooouuuAEIOOOUUU');
		
			$fajlnev_n = date('Y_m_d').'_'.$num_rows.'_'.$fajlnev_n;
			move_uploaded_file($all_tomb['tmp_name'], "$konyvtar/$fajlnev_n");//f�jl mozgat�sa a tempb�l a sz�ks�ges k�nyvt�rba
			If ($all_tomb['tmp_name'] == "") {
				$nincsfajl=1;
			}
		}
		
		#a k�p adatainak r�gz�t�se az adatb�zisba
		If ($nincsfajl != 1) {
			$sql2 = "INSERT INTO ".$_SESSION[adattabla_etag]."dokumentumok (id, file, title_hu) values ('$num_rows', '$fajlnev_n', 'dokumentum')";
			mysql_query($sql2);
			header("Location: ?tartalom=dokumentumok");
		}	
}

#k�p t�rl�s
	If ($_REQUEST['keptorles'] != ""){
		$result = mysql_query("SELECT file FROM ".$_SESSION[adattabla_etag]."dokumentumok WHERE id = $_REQUEST[keptorles]");
		$row = mysql_fetch_array($result); 
		$filenev=$row[0];
		$sql = "DELETE FROM ".$_SESSION[adattabla_etag]."dokumentumok WHERE id = $_REQUEST[keptorles]";
		mysql_query($sql);
		unlink("docs/".$filenev);
		header("Location: ?tartalom=dokumentumok");
	}
	
#dokumentum elnevez�sek m�dos�t�sa
If ($_REQUEST['mentes']) {	
	for ($i = 1; $i < 10000; $i++){
		$input_nev = 'doc_name_' . $i;
		If ($_REQUEST[$input_nev] != ""){	
			$sql2 = "UPDATE ".$_SESSION[adattabla_etag]."dokumentumok SET title_hu = '$_REQUEST[$input_nev]' WHERE id='$i'";
			mysql_query($sql2);
		}
	}
}
	
#felt�lt�tt k�pek beolvas�sa	
$result = mysql_query("SELECT id, file, title_hu FROM ".$_SESSION[adattabla_etag]."dokumentumok ORDER BY id DESC");
if (is_resource($result)) {
	while ($next_element = mysql_fetch_array($result)){
			$kepeklista .= '
				<div class="admin_kep">
					<img src="graphics/document-icon.png" alt="k�p" />
					<img src="graphics/icon_del.png" title="dokumentum t�rl�se" onclick="megerosites_x('.$next_element[id].', \'dokumentumok\')" alt="dokumentum t�rl�se" />
					<label>Dokumentum el�r�si �tvonala:</label>
					<input name="linktext" id="linktext" type="text" value="docs/'.$next_element[file].'" readonly="readonly" />
					<label>Dokumentum elnevez�se:</label>
					<input name="doc_name_'.$next_element[id].'" id="doc_name_'.$next_element[id].'" type="text" value="'.$next_element[title_hu].'" />
				</div>';
	}
}

$admin_torzs = '
	<form action="admin.php?tartalom=dokumentumok&amp;ujkepment=1" enctype="multipart/form-data" method="post" class="admin_form">
		<div class="a_form_fej">
			Dokumentumok felt�lt�se, karbantart�sa
			<input type="submit" name="mentes" value="Ment�s" class="a_form_mentes" />
		</div>
		<div class="a_form_beldiv">
			<div class="a_form_beldiv" style="border: 0px;">
				<p>�j dokumentum felt�lt�se:</p>
				<input name="file" type="file" size="30" accept="*/*" maxlength="150" style="border: 1px solid #cecece; background-color: #ffffff; margin: 0px auto 0px auto; float:none; width: 400px;" />
				<input type="submit" name="submit" value="Felt�lt�s" style="clear: both; display: block; margin: 10px auto 20px auto; float:none;" />
				<input name="f5" id="f5" type="text" style="display: none;" value="'.$_SESSION[f5v].'" />				
			</div>
			<div>Felt�lt�tt dokumentumok</div>
			'.$kepeklista.'
			<br style="clear:both;" />
		</div>
	</form>';
?>