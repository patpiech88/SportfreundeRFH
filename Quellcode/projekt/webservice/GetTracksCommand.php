<?php

	class GetTracksCommand{
		
		public function execute(){
			$tracks_service = new TracksService();
			$tracks = $tracks_service->readTracks();
			return $tracks;
		}
		
	}


?>