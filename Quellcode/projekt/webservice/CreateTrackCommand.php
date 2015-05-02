<?php 

	class CreateTrackCommand {
		
		public function execute($request){
			
			$track = new Track();
			$track->name = $request["name"];
			$track->distance = $request["distance"];
			$track->location = $request["location"];
			$track->type = $request["type"];
			$track->difficulty = $request["difficulty"];
			
			$track_service = new TracksService();
			$result = $track_service->createTrack($track);
			
			if ($result->status_code == TracksService::INVALID_INPUT){
				http_response_code(400);
				return $result->validation_messages;
				
			}
			
			http_response_code(201);
			
			header("Location: /SportfreundeRFH/Quellcode/projekt/tracks/$result->id");
			
		}
		
		
	}

?>