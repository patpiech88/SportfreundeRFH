<?php
	class TracksService{
		
		public function readTrack($id){
			
			$verbindung = new mysqli("localhost", "root", "", "sportfreunde");
			$verbindung->set_charset("utf8");
			$sql_statement = "SELECT name, distance, location, type, difficulty, trackid FROM tracks WHERE trackid = $id";
			$result_set = $verbindung->query($sql_statement);
			$track = $result_set->fetch_object("Track");
			mysqli_close($verbindung);
			return $track;
		}
		
		public function readTracks(){
			$verbindung = new mysqli("localhost", "root", "", "sportfreunde");
			if ($verbindung->connect_error != NULL){
					return self::ERROR;
				}
			$verbindung->set_charset("utf8");
			$sql_statement = "SELECT name, distance, location, type, difficulty, trackid FROM tracks";
			$result_set = $verbindung->query($sql_statement);
			$tracks = array();
			$track = $result_set->fetch_object("Track");
			while($track != NULL){
					$tracks[] = $track;
					$track = $result_set->fetch_object("Track");
				}
			mysqli_close($verbindung);
			return $tracks;
			
			
		}
		
		public function createTrack($track){
			
			$verbindung = new mysqli("localhost", "root", "", "sportfreunde");
				$verbindung->set_charset("utf8");
				$sql_statement = "INSERT INTO tracks SET ".
								"name = '$track->name', ".
								"distance = '$track->distance', ".
								"location = '$track->location', ".
								"type = '$track->type', ".
								"difficulty = '$track->difficulty'";
				$verbindung->query($sql_statement);
				$verbindung->close();
			
		}
		
		public function deleteTrack($id){
			
			
				$verbindung = new mysqli("localhost", "root", "", "sportfreunde");
				$verbindung->set_charset("utf8");
				$sql_statement = "DELETE FROM tracks WHERE trackid = $id";
				$verbindung->query($sql_statement);
				$verbindung->close();
			
		}
	
		public function updateTrack($track){
			
				$verbindung = new mysqli("localhost", "root", "", "sportfreunde");
				$verbindung->set_charset("utf8");
				$sql_statement = "UPDATE tracks SET ".
								"name = '$track->name', ".
								"distance = '$track->distance', ".
								"location = '$track->location', ".
								"type = '$track->type', ".
								"difficulty = '$track->difficulty' ".
								"WHERE trackid = $track->trackid";
				$verbindung->query($sql_statement);
				$verbindung->close();
		}
	
	}


?>