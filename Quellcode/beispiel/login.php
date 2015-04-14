<?php
session_start();
?>
<?php
	$verbindung = mysql_connect("localhost", "sportfreunde" , "d!#sport123")
	or die("Fehler bei der Verbindung zur Datenbank!");
	mysql_select_db("sportfreunde") or die ("Datenbankfehler!");

	$user = $_POST["user"];
	$pw = md5($_POST["pw"]);

	$query = "SELECT user, pw FROM users WHERE user LIKE '$user' LIMIT 1";
	$result = mysql_query($query);
	$row = mysql_fetch_object($result);

	if($row->pw == $pw)
		{
		$_SESSION["user"] = $user;
		echo "Login erfolgreich. <br> <a href=\"pw.php\">Geschützer Bereich</a>";
		}
	else
		{
		echo "Benutzername oder Passwort ist inkorrekt! <a href=\"index.php\">Login</a>";
		}
	header('Location: index.php');
?> 