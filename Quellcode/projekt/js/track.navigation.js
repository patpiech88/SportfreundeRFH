$.widget("track.navigation", {
	_create: function(){
		var that = this;
		this.element.find(".show_tracks").click(function(){
			that._trigger("onShowTracksClicked");
			return false;
		});
	}
});