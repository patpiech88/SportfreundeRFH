<?php
		require "functions.php";
		
 ?>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<title>Willkommen bei den Sportfreunden der RFH Köln!</title>
	</head>
<body>
	<div>
		<h1>Herzlich Willkommen bei den Sportfreunden der RFH Köln!</h1>
	</div>
	<div id="menu">
		<table>
			<th>
				User Menü
			</th>
			<tr>
				<td>
					<a href="..."> Login</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="..."> Profil</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="..."> Statistik</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="..."> Lauf eintragen</a>
				</td>
			</tr>
		</table>
	</div>
	<div id="hauptteil">
		<h2>Neues Mitglied</h2>
		<form action="index.php" method="post">
			<label for="name"> Name</label>
			<input type="text" name="name"/>
			
			<label for="vorname"> Vorname</label>
			<input type="text" name="vorname"/>
			
			<label for="wohnort"> Wohnort</label>
			<input type="text" name="wohnort"/>
			
			<label for="geburtstag"> Geburtstag</label>
			<input type="text" name="geburtstag"/>
			<?php set_newuser($_POST['name'], $_POST['vorname'], $_POST['wohnort'], $_POST['geburtstag']);?>
			<input type="submit" name="save" value="Eintragen"/>
		</form>
	</div>
</body>
</html>