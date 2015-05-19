<?php

	class GetTrackCommand {
		
		public function execute($request){
			
			$id = $request["id"];
			
			$tracks_service = new TracksService();
			$track = $tracks_service->readTrack($id);
			if($track == TracksService::ERROR){
					http_response_code(500);
					return;
				}
				if($track == TracksService::NOTFOUND){
					http_response_code(404);
					return;
				}
			
			unset($track->trackid);				
			header("Etag: $track->version");
			unset($track->version);
			unset($track->url);
			return $track;
			
		}
		
	}

?>