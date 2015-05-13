<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Sportfreunde</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="./css/jquery-ui-1.10.4.css" />
<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="./js/jquery-ui-1.10.4.js" type="text/javascript"></script>
<script src="./js/jquery.blockUI.js" type="text/javascript"></script>
<script src="./js/application.js" type="text/javascript"></script>
<script src="./js/track.tracklist.js" type="text/javascript"></script>
<script src="./js/track.trackdetails.js" type="text/javascript"></script>
<script src="./js/track.errordialog.js" type="text/javascript"></script>
<script src="./js/track.deletedialog.js" type="text/javascript"></script>
<script src="./js/track.editdialog.js" type="text/javascript"></script>
<script src="./js/track.createdialog.js" type="text/javascript"></script>
<script src="./js/track.navigation.js" type="text/javascript"></script>
<script src="./js/track.limitation.js" type="text/javascript"></script>
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <p><img src="img/header2.png"></p>
			
        </div>
        <div id="navigation">
			<div id="username"> <?php
										if(isset($_SESSION["user"])){
										$user = $_SESSION["user"];
										echo "Hallo, $user";}
										?>
			</div>
				<p>
				<?php
				if(isset($_SESSION["user"])){
				echo "<span class=\"menuentry\"><a href=\"#\" class=\"create_dialog\">Lauf eintragen</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\">Bestenliste</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\" class=\"show_tracks\">Streckenübersicht</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\">Meine Daten</a></span>";
				echo "<span class=\"menuentry\"><a href=\"#\">Meine Läufe</a></span>";
				}
				?>
				
				</p>
        </div>
        <div id="contentliquid">
			<div id="content">
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
							echo "<p>Willkommen auf der Seite der Sportfreunde RFH</p>";
					   }
					?> 
						<table id="track_list">
							<thead>
								<tr class="table_head">
									<th id="name_format">Name</th>
									<th id="distance_format">Distanz (km)</th>
									<th id="location_format">Ort</th>
									<th id="type_format">Typ</th>
									<th id="difficulty_format">Schwierigkeitsgrad</th>
									<th colspan="3" id="action_format">Aktionen</th>
								</tr>
							</thead>
							<tbody>
								<tr class="track template">
									<td class="name" id="name_format"></td>
									<td class="distance" id="distance_format"></td>
									<td class="location" id="location_format"></td>
									<td class="type" id="type_format"></td>
									<td class="difficulty" id="difficulty_format"></td>		
									<td><a class="edit_track" href="#">Bearbeiten</a></td>
									<td>|</td>
									<td><a class="delete_track" href="#">Löschen</a></td>								
								</tr>
							</tbody>
							<tfoot>
								<tr id="list_limit" class="list_limit">
									<td id="limit" colspan="5">Einträge pro Seite:
										<a class="ten" href="#">10</a>
										<a class="fifteen" href="#">20</a>
										<a class="twenty" href="#">30</a>
										<a class="twentyfive" href="#">50</a>
										<a class="thirty" href="#">100</a>
									</td>
									<td colspan="3" id="arrows">
										<a class="left_arrow" href="#"><- Zurück</a>
										<a class="right_arrow" href="#">Weiter -></a>
									</td>
								</tr>
							</tfoot>
						</table>

						<table id="track_details" class="ui-widget">
							<tr>
								<td><label for="name">Name</label></td>
								<td class="name" name="name"></td>
							</tr>
							<tr>
								<td><label for="distance">Distanz</label></td>
								<td class="distance" name="distance"></td>
								<td>km</td>
							</tr>
							<tr>
								<td><label for="location">Ort</label></td>
								<td class="location" name="distance"></td>
							</tr>
							<tr>
								<td><label for="type">Typ</label></td>
								<td class="type" name="type"></td>
							</tr> 
							<tr>
								<td><label for="difficulty">Schwierigkeitsgrad</label></td>
								<td class="difficulty" name="difficulty"></td>
							</tr>
							<tr>
								<td><label for="time">Zeit</label></td>
								<td class="time" name="time"></td>
							</tr>
							<tr>
								<td><label for="pace">Pace (Zeit pro km)</label></td>
								<td class="pace" name="pace"></td>
							</tr>
							<tr>
								<td><label for="description">Beschreibung</label></td>
								<td class="description" name="description"></td>
							</tr>
						</table>
				</p>
			</div>
		</div>
	   
	  <div id="edit_dialog" title="Track bearbeiten" class="ui-widget">
      <form>
        <table>
          <tr>
            <td colspan="2"><span class="validation_message ui-state-error-text"></span></td>
          </tr>
          <tr>
            <td>
              <label for="name_field">Name</label>
			  <input id="name_field" type="text"/>
			  <label for="distance_field">Distanz</label>
			  <input id="distance_field" type="text"/>
			  <label for="location_field">Ort</label>
			  <input id="location_field" type="text"/>
			  <label for="type_field">Typ</label>
			  <input id="type_field" type="text"/>
			  <label for="difficulty_field">Schwierigkeitsgrad</label>
			  <input id="difficulty_field" type="text"/>
			  <label for="time_field">Zeit</label>
			  <input id="time_field" type="text"/>
			  <label for="description_field">Beschreibung</label>
			  <input id="description_field" type="text"/>
            </td>
          </tr>
		</table>
      </form>
    </div>
	
	 <div id="create_dialog" title="Track erstellen" class="ui-widget">
      <form>
        <table>
          <tr>
            <td colspan="2"><span class="validation_message ui-state-error-text"></span></td>
          </tr>
          <tr>
            <td>
              <label for="name_field">Name</label>
			  <input id="name_field" type="text"/>
			  <label for="distance_field">Distanz</label>
			  <input id="distance_field" type="text"/>
			  <label for="location_field">Ort</label>
			  <input id="location_field" type="text"/>
			  <label for="type_field">Typ</label>
			  <input id="type_field" type="text"/>
			  <label for="difficulty_field">Schwierigkeitsgrad</label>
			  <input id="difficulty_field" type="text"/>
			  <label for="time_field">Zeit</label>
			  <input id="time_field" type="text"/>
			  <label for="description_field">Beschreibung</label>
			  <input id="description_field" type="text"/>
            </td>
          </tr>
		</table>
      </form>
    </div>
	   
	   <div id="error_dialog" title="Fehler" class="ui-widget">
			<div class="message"></div>
		</div>
	   
	   <div id="delete_dialog" title="Track löschen" class="ui-widget">
			<div>Möchten Sie die Strecke wirklich löschen?</div>
		</div>

        <div id="footer">
            <p>
			<?php
				if(isset($_SESSION["user"])){
				echo "<span><a href=\"/SportfreundeRFH/Quellcode/projekt/mobile/index.html\">Mobile Version</a></span>";
				echo " ";
				echo "<span><a href=\"index.php\" onclick=\"<?php	session_destroy();?>\">Logout</a></span>";
				}
				?>
			</p>
        </div>
    </div>
</body>
</html>
