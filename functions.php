<?php
		
		
		
		
		function set_newuser($name, $vorname, $wohnort, $geburtstag)
		{
			$link = mysqli_connect("localhost","patrick","","sportfreunde");
			mysqli_set_charset($link, "utf8");
			$sql_statement = "INSERT INTO mitglieder (name, vorname, wohnort, geburtstag) " . 
							"VALUES ('$name', '$vorname', '$wohnort', '$geburtstag')";
			$result_set = mysqli_query($link, $sql_statement);
			mysqli_close($link);
		}
		
 ?>