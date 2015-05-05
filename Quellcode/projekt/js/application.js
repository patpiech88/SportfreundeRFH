$(function() {
	
	$(document).ajaxError(function(event, response){
		if(response.status == 400) {
			return;
		}
		
		//Methodenaufruf für ein Widget
		$("#error_dialog").errorDialog("open", response.statusText);
		$("#track_details").hide();
		$("#track_list").show();
		if (response.status == 404) {
			$("#track_list").trackList("reload");
		}
		
	});
	
	$(document).ajaxStart(function() {
		$.blockUI({ message: "Moment bitte..." });
	});
	$(document).ajaxStop(function() {
		$.unblockUI();
	});
	
	$("#error_dialog").errorDialog();
	
	$("#navigation").navigation({
		onShowTracksClicked: function(){
			$("#track_list").trackList("reload");
			$("#track_list").show();
			$("#track_details").hide();
			
			
		},
		onCreateTrackClicked: function(){
			$("#create_dialog").createDialog("open");
			$("#track_list").show();
			$("#track_details").hide();
			
		}
		
	});
	
	$("#track_list").trackList({
		onTrackClicked: function(event, trackUrl){
			$("#track_list").hide();
			$("#track_details").show();
			$("#track_details").trackDetails("load", trackUrl);
		},
		
		onDeleteTrackClicked: function(event, trackUrl){
			$("#delete_dialog").deleteDialog("open", trackUrl);
			
		},
		onEditTrackClicked: function(event, track){
			$("#edit_dialog").editDialog("open", track);
		}
	}
	);
	
	$("#track_details").trackDetails();
	
	//instanziierung
	$("#delete_dialog").deleteDialog({
		onTrackDeleted: function(){
			$("#track_list").trackList("reload");
		}
		
	});
	
	$("#edit_dialog").editDialog({
		onTrackEdited: function(){
			$("#track_list").trackList("reload");
		}
	});
	
	$("#create_dialog").createDialog({
		onTrackCreated: function(){
			$("#track_list").trackList("reload");
			
			
		}
	});
	
	
});