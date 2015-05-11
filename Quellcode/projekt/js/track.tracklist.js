$.widget("track.trackList", {  
  _create: function() { 
	$.ajax({
		url:"/SportfreundeRFH/Quellcode/projekt/tracks",
		dataType: "json",
		success: this._appendTracks,
		context: this
	});
  },
  
  reload: function() {
	  this.element.find(".track:not(.template)").remove();
	  $.ajax({
		url:"/SportfreundeRFH/Quellcode/projekt/tracks",
		dataType: "json",
		success: this._appendTracks,
		context: this
		});
		
  },
  
  _appendTracks: function(tracks) {
		var that = this;
			for(var i = 0; i < tracks.length; i++){
				var track = tracks[i];
				var trackElement = this.element.find(".template").clone().removeClass("template");
				trackElement.find(".name").text(track.name);
				trackElement.find(".distance").text(track.distance);
				trackElement.find(".location").text(track.location);
				trackElement.find(".type").text(track.type);
				trackElement.find(".difficulty").text(track.difficulty);
				trackElement.click(track.url, function(event){
					that._trigger("onTrackClicked", null, event.data);
					});
				trackElement.find(".delete_track").click(track.url, function(event){
					that._trigger("onDeleteTrackClicked", null, event.data);
					return false;
					});
				trackElement.find(".edit_track").click(track, function(event){
				that._trigger("onEditTrackClicked", null, event.data);
				return false;
				});
				this.element.append(trackElement);
			}
		}
});