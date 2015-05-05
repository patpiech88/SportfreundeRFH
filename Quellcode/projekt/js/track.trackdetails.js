$.widget("track.trackDetails", {
	
	
	load: function(url) {
		
		$.ajax({
		url: url,
		dataType: "json",
		success: this._setTrack,
		context: this
		
		});
		
	},
	
	_setTrack: function(track) {
							
			this.element.find(".name").text(track.name);
			this.element.find(".distance").text(track.distance);
			this.element.find(".location").text(track.location);
			this.element.find(".type").text(track.type);
			this.element.find(".difficulty").text(track.difficulty);
			this.element.find(".time").text(track.time);
			this.element.find(".description").text(track.description);
	}
	
	
});