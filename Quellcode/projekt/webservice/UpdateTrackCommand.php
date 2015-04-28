<?php

	class UpdateTrackCommand{
		
		public function execute($request){
			
			$track = new Track();
			
			$track->name = $request["name"];
			$track->distance = $request["distance"];
			$track->location = $request["location"];
			$track->type = $request["type"];
			$track->difficulty = $request["difficulty"];
			
			$track_service = new TracksService();
			$result = $track_service->updateTrack($track);
		}
	}


?>