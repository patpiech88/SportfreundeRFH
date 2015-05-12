var lines;
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
  
  reload: function(objectsOnPage) {
	  if(typeof(lines) == "undefined" || typeof(objectsOnPage) == "undefined" ){
		  lines = 10;
	  }
	  else{
	  lines = objectsOnPage;
	  }
	  this.element.find(".track:not(.template)").remove();
	  $.ajax({
		url:"/SportfreundeRFH/Quellcode/projekt/tracks",
		dataType: "json",
		success: this._appendTracks,
		context: this
		});
  },
  
  home: function(){
	  page = 0;
  },
  
  forward: function(){
	  page = ++page;
	  this.reload(lines);
  },
  backwards: function(){
	  if(page > 0){
	  page = --page;
	  }
	  this.reload(lines);
  },
  
  
  _appendTracks: function(tracks) {
		var that = this;
			for(var i = page * lines; i < (page * lines) + lines; i++){
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
				if(i < lines){
					this.element.find(".left_arrow").hide();
				}
				else{
					this.element.find(".left_arrow").show();
				}
				if(i + 1 == tracks.length){
				this.element.find(".right_arrow").hide();
				}
				else{
				this.element.find(".right_arrow").show();
				}
				this.element.append(trackElement);
				}
			}
		}
});


