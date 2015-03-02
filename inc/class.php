<?php

class html_blokk{
	public $html_code;
	
	function load_template_file($fajlnev,$tomb) {
		if(file_exists($fajlnev) > 0) {
			$temp = fopen($fajlnev,"r");
			$tartalom = fread($temp, filesize($fajlnev));
			fclose($temp);
			$tartalom = preg_replace("/{(.*?)}/si","{\$tomb[\\1]}",$tartalom);
			eval("\$tartalom = \"" . addslashes($tartalom) . "\";");
			$tartalom = str_replace("\'", "'", $tartalom);
			$this->html_code = $tartalom . "\n";
		}
	}
}

class html_blokk_mysql{
	public $html_code;
	
	function load_template_string($string,$tomb) {			
		$tartalom = $string;			
		$tartalom = preg_replace("/{(.*?)}/si","{\$tomb[\\1]}",$tartalom);			
		eval("\$tartalom = \"" . addslashes($tartalom) . "\";");			
		$tartalom = str_replace("\'", "'", $tartalom);			
		$this->html_code = $tartalom . "\n";	
	}
}


class datum {
	public $ev;
	public $honap;
	public $nap;
	public $nev;
	public $szoveg;
#	$holnap      = mktime(0, 0, 0, date("m"),   date("d")+1, date("Y"));
	
	function nevnap_kiir($mara, $honapra, $napra, $nevszam) {
		$ev = date(Y);
		$honap = $honapra;
		$nap = $napra;
		
		if ($mara == "ma"){
			$ev = date(Y);
			$honap = date(m);
			$nap = date(d);
		} 
		$nevdb = 0;
		$result = mysql_query("SELECT nev FROM nevnapok WHERE honap = '$honap' AND nap = '$nap'");
		while ($next_element = mysql_fetch_array($result)){			
			$nevdb++;
			if ($nevdb > 1)	{
				$irasjel = ', ';
			}
			$nev_adat .= $irasjel . $next_element[nev];
			if ($nevszam == $nevdb)	{ 
				break;
			}
		}
		
		$this->szoveg= '<div id="nevek">A mai dátum:  ' .$ev . '.' . $honap . '. ' . $nap . '., köszöntjük<br />' . $nev_adat.' nevü látogatókat</div>';
	}
}

		

?>
