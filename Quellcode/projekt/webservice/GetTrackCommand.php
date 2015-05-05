<?php

	class GetTrackCommand {
		
		public function execute($request){
			$id = $request["id"];
			
			$tracks_service = new TracksService();
			$track = $tracks_service->readTrack($id);
			
			unset($track->trackid);				
			header("Etag: $track->version");
			unset($track->version);
			unset($track->url);
			return $track;
			
			
		}
		
	}

?>