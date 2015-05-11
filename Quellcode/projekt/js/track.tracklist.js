var gtest;
var page = 0;

$.widget("track.trackList", {
  _create: function() { 
	$.ajax({
		url:"/SportfreundeRFH/Quellcode/projekt/tracks",
		dataType: "json",
		success: this._appendTracks,
		context: this
	});
	
  },
  
  reload: function(wert) {
	  if(typeof(gtest) == "undefined" || typeof(wert) == "undefined" ){
		  gtest = 10;
	  }
	  else{
	  gtest = wert;
	  }
	  this.element.find(".track:not(.template)").remove();
	  $.ajax({
		url:"/SportfreundeRFH/Quellcode/projekt/tracks",
		dataType: "json",
		success: this._appendTracks,
		context: this
		});
  },
  
  forward: function(){
	  page = page + 1;
	  this.reload(gtest);
  },
  backwards: function(){
	  if(page > 0){
	  page = page - 1;
	  }
	  this.reload(gtest);
  },
  
  
  _appendTracks: function(tracks) {
		var that = this;
		
			for(var i = page * gtest + 1; i < (page * gtest + 1) + gtest; i++){
				if(i < tracks.length)
				{
				
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
		}
});


