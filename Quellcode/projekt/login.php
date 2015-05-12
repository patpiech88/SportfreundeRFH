<?php
session_start();
?>
<?php
	$verbindung = mysql_connect("localhost", "root" , "")
	or die("Fehler bei der Verbindung zur Datenbank!");
	mysql_select_db("sportfreunde") or die ("Datenbankfehler!");

	$user = $_POST["user"];
	$pw = $_POST["pw"];

	$query = "SELECT user, pw FROM users WHERE user LIKE '$user' LIMIT 1";
	$result = mysql_query($query);
	$row = mysql_fetch_object($result);

	if($row->pw == $pw)
		{
		$_SESSION["user"] = $user;
		}
	header('Location: index.php');
?> 
