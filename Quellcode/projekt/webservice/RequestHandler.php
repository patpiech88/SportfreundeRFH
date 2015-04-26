<?php

	require "Track.php";
	require "TracksService.php";
	require "GetTrackCommand.php";
	require "GetTracksCommand.php";
	require "CreateTrackCommand.php";
	require "DeleteTrackCommand.php";
	require "UpdateTrackCommand.php";

	
	class RequestHandler {
			
			public function handleRequest(){
				
				$request = $_REQUEST;
				
				$class_name = $request["command"];	//query string wird ausgelesen
				$command = new $class_name;
				$result = $command->execute($request);
				
				if($result !== NULL){
				echo(json_encode($result));
				}
			}
	}
	$request_Handler = new RequestHandler();
	$request_Handler->handleRequest();
?> 