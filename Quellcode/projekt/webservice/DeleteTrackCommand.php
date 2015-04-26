<?php

	class DeleteTrackCommand{
		
				public function execute($request){

					$id = $request["id"];
					$track_service = new TracksService();
					$track_service->deleteTrack($id);

				}
				
		
	}


?>