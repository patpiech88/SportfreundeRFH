<?php	

	class TracksService{
		
		const ERROR = "ERROR";
		const NOTFOUND = "NOTFOUND";
		const INVALID_INPUT = "INVALID_INPUT";
		const OK = "OK";
		const VERSION_OUTDATED = "VERSION_OUTDATED";
		
		public function connect(){
			@$verbindung = new mysqli("localhost", "root", "", "sportfreunde");
			if ($verbindung->connect_error != NULL){
					return self::ERROR;
				}
			$verbindung->set_charset("utf8");
			if($verbindung == FALSE){
				$verbindung->close();
				return self::ERROR;
			}
			return $verbindung;
			}
		
		
		public function readTrack($id){		
			$verbindung = $this->connect();
			$sql_statement = "SELECT name, distance, location, type, difficulty, trackid, version, TIME_FORMAT(time, '%H:%i:%s') as time, description FROM tracks WHERE trackid = $id";
			$result_set = $verbindung->query($sql_statement);
			$track = $result_set->fetch_object("Track");
			if ($track === NULL){
					return self::NOTFOUND;
				}
			$verbindung->close();
			return $track;
		}
		
		public function readTracks(){		
			$verbindung = $this->connect();
			$sql_statement = "SELECT name, distance, location, type, difficulty, trackid, version, TIME_FORMAT(time, '%H:%i:%s') as time, description FROM tracks";
			$result_set = $verbindung->query($sql_statement);
			$tracks = array();
			$track = $result_set->fetch_object("Track");
			while($track != NULL){
					$tracks[] = $track;
					$track = $result_set->fetch_object("Track");
				}
			$verbindung->close();
			return $tracks;	
		}
		
		public function createTrack($track){
			$result = new CreateTrackResult();	
			
			foreach ($track as $element => $value){
				if($element != "trackid" && $element != "url" && $element != "version"){
					if (empty($value)){
						$result->status_code = self::INVALID_INPUT;
						$result->validation_messages["$element"] = "Bitte geben Sie einen Wert ein!";
						return $result;
					}
				}
			}
			$verbindung = $this->connect();
			$sql_statement = "INSERT INTO tracks SET ".
							"name = '$track->name', ".
							"distance = '$track->distance', ".
							"location = '$track->location', ".
							"type = '$track->type', ".
							"difficulty = '$track->difficulty', ".
							"time = '$track->time', ".
							"description = '$track->description', ".
							"version = 1";
			
			$verbindung->query($sql_statement);
			$id = $verbindung->insert_id;
			$verbindung->close();
			$result->status_code = self::OK;
			$result->id = $id;
			return $result;
			
		}
		
		public function deleteTrack($id){
				$verbindung = $this->connect();
				$sql_statement = "DELETE FROM tracks WHERE trackid = $id";
				
				$verbindung->query($sql_statement);
				$verbindung->close();
			}
	
		public function updateTrack($track){
			
				$verbindung = $this->connect();
				$sql_statement = "UPDATE tracks SET ".
								"name = '$track->name', ".
								"distance = '$track->distance', ".
								"location = '$track->location', ".
								"type = '$track->type', ".
								"difficulty = '$track->difficulty', ".
								"time = '$track->time', ".
								"description = '$track->description', ".
								"version = version + 1 ".
								"WHERE trackid = $track->trackid AND version = $track->version";
				$verbindung->query($sql_statement);
				$affected_rows = $verbindung->affected_rows;
				
				if ($affected_rows == 0){
					
					$select_statement = "SELECT COUNT(*) FROM tracks WHERE trackid = $track->trackid";
					$result_set = $verbindung->query($select_statement);
					$row = $result_set->fetch_row();
					$count = $row[0];
					$verbindung->close();
					if($count == 1){
					return self::VERSION_OUTDATED;
					}
					return self::NOTFOUND;
				}
				else{
				$verbindung->close();
				}	
		}
	}
?>