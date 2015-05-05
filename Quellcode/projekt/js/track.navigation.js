$.widget("track.navigation", {
	_create: function(){
		var that = this;
		this.element.find(".show_tracks").click(function(){
			that._trigger("onShowTracksClicked");
			return false;
		});
		this.element.find(".create_dialog").click(function(){
			that._trigger("onCreateTrackClicked");
			return false;
		});
	}
});