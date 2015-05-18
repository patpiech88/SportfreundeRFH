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
			
			var time_value = track.time.split(':');
			var time_sekunden = (3600 * time_value[0]) + (60 * time_value[1]) + (1 * time_value[2]);
			var pace_sekunden = time_sekunden / track.distance;
			var h = parseInt(pace_sekunden / 3600);
			if(h <10){
				h = "0"+h;
			}
			var m = parseInt((pace_sekunden / 60) % 60);
			if(m < 10){
				m = "0"+m;
			}
			var s = parseInt(pace_sekunden % 60);
			if(s < 10){
				s = "0"+s;
			}
			var pace_value = h+':'+m+':'+s;
			this.element.find(".pace").text(pace_value);
			
			
	}
	
	
});