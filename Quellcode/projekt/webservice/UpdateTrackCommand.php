<?php

	class UpdateTrackCommand{
		
		public function execute($request, $request_headers){
			
			$track = new Track();
			$track->trackid = $request["id"];
			$track->name = $request["name"];
			$track->distance = $request["distance"];
			$track->location = $request["location"];
			$track->type = $request["type"];
			$track->difficulty = $request["difficulty"];
			$track->time = $request["time"];
			$track->description = $request["description"];
			$track->version = $request_headers["If-Match"];
			
			$track_service = new TracksService();
			$result = $track_service->updateTrack($track);
			
			if($result == TracksService::VERSION_OUTDATED){
					http_response_code(412);
					return;
				}
				if($result == TracksService::NOTFOUND){
					http_response_code(404);
					return;
				}
			return $result;
		}
	}
?>