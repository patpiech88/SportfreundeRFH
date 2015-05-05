$.widget("track.createDialog", $.ui.dialog, {
	options: {
		autoOpen: false,
		modal: true,
		width: 750,
		height: 500
	},
	
	open: function(){
			
			
			
			this.element.find("#name_field").val();
			this.element.find("#distance_field").val();
			this.element.find("#location_field").val();
			this.element.find("#type_field").val();
			this.element.find("#difficulty_field").val();
			this._super();
	},
	
	_create: function(){
		var that = this;
		this.options.buttons = [
			//Erster Button
			{
				text: "Abbrechen",
				click: function() {
				that.close();
					
				}
			},	
			//Zweiter Button
			{
				text: "OK",
				click: function() {
					
					that._createTrack();
					
					
					//alert(that._todoUrl);
					//that._deleteTodo(that._todoUrl);
				}
			}
		
		];
		this._super();
	},
	
	_createTrack: function(track) {
		
		var track = {
			//Datenübergabe funktioniert nicht
			name: this.element.find("#name_field").val(track.name),
			distance: this.element.find("#distance_field").val(track.distance),
			location: this.element.find("#location_field").val(track.location),
			type: this.element.find("#type_field").val(track.type),
			difficulty: this.element.find("#difficulty_field").val(track.difficulty)
		};
		
		$.ajax({
						type: "POST",
						data: track,
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