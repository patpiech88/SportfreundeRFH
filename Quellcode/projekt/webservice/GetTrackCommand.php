<?php

	class GetTrackCommand {
		
		public function execute($request){
			$id = $request["id"];
			
			$tracks_service = new TracksService();
			$track = $tracks_service->readTrack($id);
			return $track;
			
			
		}
		
	}

?>