$.widget("track.errorDialog", $.ui.dialog, {
	options: {
		autoOpen: false,
		modal: true
	},
	
	open: function(message){
			this._super();
			this.element.find(".message").text(message);
	},
	
	_create: function(){
		var that = this;
		this.options.buttons = [
		{
			text: "Schliessen",
			click: function() {
				that.close();
			}
		}
		];
		this._super();
	}
	
	
});