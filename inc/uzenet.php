<?php
if ($_REQUEST[ok]){
	$uzenet = 'K�sz�nj�k �rdekl�d�s�t, hamarosan v�laszolunk!';
}

if (isset($_REQUEST[send]))	{
	
	$hiba = 0;
	
	if (!$_REQUEST[name]){
		$uzenet = 'Nem adott meg nevet!';
		$hiba++;
	}
	
	if (!$_REQUEST[email]){
		$uzenet = 'Nem adott meg email c�met!';
		$hiba++;
	}
	
	if (!$_REQUEST[message]){
		$uzenet = 'Nem �rt �zenetet!';
		$hiba++;
	}
	
	$email = $_REQUEST['email'] ;
	$name = $_REQUEST['name'] ;		  
	$message = $_REQUEST['message'];
	
	if ($hiba == 0){
		  
		  $cimzett = 'reveszj@t-online.hu';
			
			$subject = "�zenet a honlapr�l: " . $name." �zenete a Ronar�d honlapj�r�l";
			$message = '�zenet: '.$message;		
			$headers = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-2' . "\r\n";
			$headers .= 'From: '.$name.'<'.$email.'>' . "\r\n" .
						'Reply-To: '.$email.'' . "\r\n" .
						'X-Mailer: PHP/' . phpversion();

			mail($cimzett, $subject, $message, $headers);
			
		  
		    #adatb�zis ment�s helye
			$sql = "INSERT INTO ".$_SESSION[adattabla_etag]."uzenet (email, nev, message) values ('$email', '$name', '$message')";
			mysql_query($sql);
			
			unset($email);
			unset($name);
			unset($message);
			
			header("Location: index.php?id=".$_REQUEST[id]."&ok=1");  //helyes v�grehajt�s ut�n �resen �jra megh�vjuk az oldalt
	}
}

$array = array('uzenet' => $uzenet,
				'email' => $email,
				'name' => $name,
				'message' => $message,);
				
$email_urlap_html = new html_blokk;
$email_urlap_html->load_template_file("templates/email.html",$array);
$php_file_html = $email_urlap_html->html_code;
?>