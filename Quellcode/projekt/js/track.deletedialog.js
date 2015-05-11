$.widget("track.deleteDialog", $.ui.dialog, {
	options: {
		autoOpen: false,
		modal: true
	},
	open: function(trackUrl){
			this._trackUrl = trackUrl;
			this._super();
	},
	_create: function(){
			var that = this;
			this.options.buttons = [
			{
				text: "Abbrechen",
				click: function() {
				that.close();
				}
			},	
	
			{
			text: "OK",
			click: function() {
				$.ajax({
					url: that._trackUrl,
					success: function(){that._trigger("onTrackDeleted");},
					type: "DELETE",
					context: this
						});
				that.close();
				}
			}
		];
		this._super();
	}
	
	
});