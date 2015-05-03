$.widget("track.editDialog", $.ui.dialog, {
	options: {
		autoOpen: false,
		modal: true,
		width: 550
	},
	
	open: function(track){
			this._track = track;
			//ANPASSEN!!!!!!!
			this.element.find(".validation_message").empty();
			this.element.find("#name_field").val(track.name);
			this.element.find("#name_field").removeClass("ui-state-error");
			this.element.find("#distance_field").val(track.distance);
			this.element.find("#location_field").val(track.location);
			this.element.find("#type_field").val(track.type);
			this.element.find("#difficulty_field").val(track.difficulty);
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
					
					that._updateTrack();
					
					
					//alert(that._todoUrl);
					//that._deleteTodo(that._todoUrl);
				}
			}
		
		];
		this._super();
	},
	
	_updateTrack: function() {
		
		var track = {
			//ANPASSEN!!!!!
			name: this.element.find("#name_field").val(),
			distance: this.element.find("#distance_field").val(),
			location: this.element.find("#location_field").val(),
			type: this.element.find("#type_field").val(),
			difficulty: this.element.find("#difficulty_field").val()
		};
		
		$.ajax({
						type: "PUT",
						url: this._track.url,
						headers: {"If-Match": this._track.version},
						data: track,
						success: function(){
							this.close();
							this._trigger("onTrackEdited");
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