$.widget("track.listLimit", {
	_create: function(){
		var that = this;
		this.element.find(".ten").click(function(){
			that._trigger("onTenClicked");
			return false;
		});
		this.element.find(".fifteen").click(function(){
			alert("Klappt");
			
		});
		this.element.find(".twenty").click(function(){
			alert("Klappt");
			
		});
		this.element.find(".twentyfive").click(function(){
			alert("Klappt");
			
		});
		this.element.find(".thirty").click(function(){
			alert("Klappt");
			
		});
	}
	
});