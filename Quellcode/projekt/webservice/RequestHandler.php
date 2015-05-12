<?php
	require "Track.php";
	require "TracksService.php";
	require "GetTrackCommand.php";
	require "GetTracksCommand.php";
	require "CreateTrackCommand.php";
	require "CreateTrackResult.php";
	require "DeleteTrackCommand.php";
	require "UpdateTrackCommand.php";

	
	class RequestHandler {
			
			public function handleRequest(){
				header("Cache-Control: no-cache, must-revalidate");	
				$request = $_REQUEST;
				if ($_SERVER["REQUEST_METHOD"] == "PUT") {
				   parse_str(file_get_contents("php://input"), $body_parameters);
				   $request = $request + $body_parameters;
				   if ($request["name"] == "") {
					  header("HTTP/1.1 400");
					  $validation_messages = array();
					  $validation_messages["name"] = "Der Name ist eine Pflichtangabe. Bitte geben Sie einen Namen an.";
					  echo json_encode($validation_messages);
					  return;
					}
				}
				$request_headers = apache_request_headers();
				$class_name = $request["command"];	
				$command = new $class_name;
				$result = $command->execute($request, $request_headers);
				if($result !== NULL){
					echo(json_encode($result));
				}
			}
	}
	$request_Handler = new RequestHandler();
	$request_Handler->handleRequest();
?> 