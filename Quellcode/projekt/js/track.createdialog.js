$.widget("track.createDialog", $.ui.dialog, {
	options: {
		autoOpen: false,
		modal: true,
		width: 750,
		height: 500
	},
	
	open: function(){
			
			this.element.find(".validation_message").empty();
			this.element.find("#name_field").val("");
			this.element.find("#name_field").removeClass("ui-state-error");
			this.element.find("#distance_field").val("");
			this.element.find("#distance_field").removeClass("ui-state-error");
			this.element.find("#location_field").val("");
			this.element.find("#location_field").removeClass("ui-state-error");
			this.element.find("#type_field").val("");
			this.element.find("#type_field").removeClass("ui-state-error");
			this.element.find("#difficulty_field").val("");
			this.element.find("#difficulty_field").removeClass("ui-state-error");
			this.element.find("#time_field").val("");
			this.element.find("#time_field").removeClass("ui-state-error");
			this.element.find("#description_field").val("");
			this.element.find("#description_field").removeClass("ui-state-error");
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
			difficulty: this.element.find("#difficulty_field").val(),
			time: this.element.find("#time_field").val(),
			description: this.element.find("#description_field").val()
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
								if(validationMessages.name != null){
								this.element.find(".validation_message").text(validationMessages.name);
								this.element.find("#name_field").addClass("ui-state-error").focus();
								}
								if(validationMessages.distance != null){
								this.element.find(".validation_message").text(validationMessages.distance);
								this.element.find("#distance_field").addClass("ui-state-error").focus();
								}
								if(validationMessages.location != null){
								this.element.find(".validation_message").text(validationMessages.location);
								this.element.find("#location_field").addClass("ui-state-error").focus();
								}
								if(validationMessages.type != null){
								this.element.find(".validation_message").text(validationMessages.type);
								this.element.find("#type_field").addClass("ui-state-error").focus();
								}
								if(validationMessages.difficulty != null){
								this.element.find(".validation_message").text(validationMessages.difficulty);
								this.element.find("#difficulty_field").addClass("ui-state-error").focus();
								}
								if(validationMessages.time != null){
								this.element.find(".validation_message").text(validationMessages.time);
								this.element.find("#time_field").addClass("ui-state-error").focus();
								}
								if(validationMessages.description != null){
								this.element.find(".validation_message").text(validationMessages.description);
								this.element.find("#description_field").addClass("ui-state-error").focus();
								}
							}
						},
						context: this
						});
	}
	
	
	
	});