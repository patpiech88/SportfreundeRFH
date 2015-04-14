<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<script type="text/javascript">
function newrun()
{
    var xmlhttp;
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function()
    {
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
         document.getElementById("content").innerHTML = xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET","newrun.php",true);
    xmlhttp.send();
	
}
</script>
<meta charset="UTF-8"> 
<title>Sportfreunde</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <p><img src="img/header2.png"></p>
        </div>
        <div id="navigation">
            <p>
			<?php
			if(isset($_SESSION["user"])){
				echo "<span class=\"menuentry\"><a href=\"#\" onclick=\"newrun()\">Lauf eintragen</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\" onclick=\"ajaxctr(newrun.php)\">Bestenliste</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\" onclick=\"ajaxctr(newrun.php)\">Streckenübersicht</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\" onclick=\"ajaxctr(newrun.php)\">Meine Daten</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\" onclick=\"ajaxctr(newrun.php)\">Meine Läufe</a></span>";
			}
			?>
			</p>
        </div>
        <div id="contentliquid"><div id="content">
		 <p>
		<?php
if(!isset($_SESSION["user"]))
   {
		echo "<form action=\"login.php\" method=\"post\">
  		   <p>Sie sind nicht eingeloggt!</p>
		   <p>Bitte melden Sie sich an:</p>  
			<label for=\"user\">Benutzer:</label>
		  <p> <input type=\"text\" name=\"user\" id=\"user\" value=\"\" /></p>
			<label for=\"pw\">Passwort</label>
		  <p> <input type=\"password\" name=\"pw\" id=\"pw\" value=\"\" /></p>
		  <p><input type=\"submit\" name=\"cancel\" value=\"Absenden\"/></p>

		</form>";
		
   }else{
	    echo "<p>Willkommen auf Sportfreunde RFH</p>";
   }
?> 
		</p>
       </div></div>

        <div id="footer">
            <p>Impressum
			<?php
			if(isset($_SESSION["user"])){
				echo " | <a href=\"logout.php\">Logout</a>";
   			}
			?>
	   </p>
        </div>
    </div>
</body>
</html>
