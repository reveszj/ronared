<?
//echo 'session: '.$_SESSION[f5v]. ' request: '.$_REQUEST[f5];
If ($_REQUEST[ujkepment] == '1'){
	if ($_REQUEST[f5] == $_SESSION[f5v]){
		#k�pfile felt�lt�se
		$result = mysql_query("SELECT MAX(id) FROM ".$_SESSION[adattabla_etag]."file");
		if (is_resource($result)) {
			$row = mysql_fetch_array($result); 
			$num_rows=$row[0];
			$num_rows++;}
		else {
			$num_rows = 1;}
		
		$konyvtar = 'files/';
		foreach($_FILES as $allomanynev => $all_tomb) {
			$fajlnev_n = date('Y_m_d').'_'.$all_tomb['name'];
			move_uploaded_file($all_tomb['tmp_name'], "$konyvtar/$fajlnev_n");
			If ($all_tomb['tmp_name'] == "") {
				$nincsfajl=1;
			}
			$filenev = "files/".$all_tomb['name'];
			$filename = $all_tomb['name'];
			settype ($filenev, 'string');
			$uzenet = $all_tomb['tmp_name'];
		}
		
		#a k�p adatainak r�gz�t�se az adatb�zisba
		If ($nincsfajl != 1) {
			$sql2 = "INSERT INTO ".$_SESSION[adattabla_etag]."file (id, file) values ('$num_rows', '$fajlnev_n')";
			mysql_query($sql2);
			header("Location: ?tartalom=file");
		}	
	}
}

#k�p t�rl�s
	If ($_REQUEST['keptorles'] != ""){
		$result = mysql_query("SELECT file FROM ".$_SESSION[adatbazis_etag]."_file WHERE id = $_REQUEST[keptorles]");
		$row = mysql_fetch_array($result); 
		$filenev=$row[0];
		$sql = "DELETE FROM ".$_SESSION[adatbazis_etag]."_file WHERE id = $_REQUEST[keptorles]";
		mysql_query($sql);
		unlink("files/".$filenev);
	}

#felt�lt�tt k�pek beolvas�sa	
$result = mysql_query("SELECT id, file, title_hu FROM ".$_SESSION[adatbazis_etag]."_file ORDER BY id DESC");
if (is_resource($result)) {
	while ($next_element = mysql_fetch_array($result)){
			$kepeklista .= '
				<div class="admin_kep">
					<img src="graphics/file-icon.png" alt="" />
					<img src="graphics/icon_del.png" title="f�jl t�rl�se" onclick="megerosites_x('.$next_element[id].', \'file\')" alt="f�jl t�rl�se" />
					<label>F�jl el�r�si �tvonala:</label>
					<input name="linktext" id="linktext" type="text" value="files/'.$next_element[file].'" readonly="readonly" />
				</div>';
	}
}
#include ('f5.php');
f5();
$admin_torzs = '
	<form action="admin.php?tartalom=file&amp;ujkepment=1" enctype="multipart/form-data" method="post" class="admin_form">
		<div class="a_form_fej">
			F�jlok felt�lt�se, karbantart�sa
			<!-- <input type="submit" name="Submit" value="Ment�s" class="a_form_mentes" /> -->
		</div>
		<div class="a_form_beldiv">
			<div class="a_form_beldiv" style="border: 0px;">
				<p>�j f�jl felt�lt�se:</p>
				<input name="file" type="file" size="30" accept="*/*" maxlength="150" style="border: 1px solid #cecece; background-color: #ffffff; margin: 0px auto 0px auto; float:none; width: 400px;" />
				<input type="submit" name="submit" value="Felt�lt�s" style="clear: both; display: block; margin: 10px auto 20px auto; float:none;" />
				<input name="f5" id="f5" type="text" style="display: none;" value="'.$_SESSION[f5v].'" />				
			</div>
			<div>Felt�lt�tt f�jlok</div>
			'.$kepeklista.'
			<br style="clear:both;" />
		</div>
	</form>';
?>