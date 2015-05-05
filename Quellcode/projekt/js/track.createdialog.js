$.widget("track.createDialog", $.ui.dialog, {
	options: {
		autoOpen: false,
		modal: true,
		width: 750,
		height: 500
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
					that._createTrack();
				}
			}
		
		];
		this._super();
	},
	
	_createTrack: function() {
		
		var track = {
			
			name: this.element.find("#name_field").val(),
			distance: this.element.find("#distance_field").val(),
			location: this.element.find("#location_field").val(),
			type: this.element.find("#type_field").val(),
			difficulty: this.element.find("#difficulty_field").val()
		};
		
		$.ajax({
						type: "POST",
						data: track,
						url: "/SportfreundeRFH/Quellcode/projekt/tracks",
						success: function(){
							this.close();
							this._trigger("onTrackCreated");
						},
						error: function(response) {
							if(response.status == 400) {
								var validationMessages = $.parseJSON(response.responseText);
								if(validationMessages.title != null){
								this.element.find(".validation_message").text(validationMessages.title);
								this.element.find("#name_field").addClass("ui-state-error").focus();
								}
							}
						},
						context: this
						});
	}
	
	
	
	});