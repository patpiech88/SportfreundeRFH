$.widget("track.listLimit", {
	_create: function(){
		var that = this;
		
		this.element.find(".ten").click(function(){
			that._trigger("onTenClicked");
			return false;
		});
		this.element.find(".twenty").click(function(){
			that._trigger("onTwentyClicked");
			return false;
		});
		this.element.find(".thirty").click(function(){
			that._trigger("onThirtyClicked");
			return false;
		});
		this.element.find(".fifty").click(function(){
			that._trigger("onFiftyClicked");
			return false;
		});
		this.element.find(".hundred").click(function(){
			that._trigger("onHundredClicked");
			return false;
		});
		this.element.find(".left_arrow").click(function(){
			that._trigger("onLeftArrowClicked");
			return false;
		});
		this.element.find(".right_arrow").click(function(){
			that._trigger("onRightArrowClicked");
			return false;
		});
	}
	
});