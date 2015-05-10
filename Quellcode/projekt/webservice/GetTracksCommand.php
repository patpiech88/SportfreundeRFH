<?php

	class GetTracksCommand{
		
		public function execute(){
			$tracks_service = new TracksService();
			$tracks = $tracks_service->readTracks();
			
			if($tracks == TracksService::ERROR){
					http_response_code(500);
					return;
				}
				
				foreach ($tracks as $track) {
					$track->url = "/SportfreundeRFH/Quellcode/projekt/tracks/$track->trackid";
					unset($track->trackid);
				}
			
			return $tracks;
		}
		
	}


?>