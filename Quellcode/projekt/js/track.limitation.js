$.widget("track.listLimit", {
	_create: function(){
		var that = this;
		this.element.find(".ten").click(function(){
			that._trigger("onTenClicked");
			return false;
		});
		this.element.find(".fifteen").click(function(){
			that._trigger("onFifteenClicked");
			return false;
			
		});
		this.element.find(".twenty").click(function(){
			that._trigger("onTwentyClicked");
			return false;
			
		});
		this.element.find(".twentyfive").click(function(){
			that._trigger("onTwentyfiveClicked");
			return false;
			
		});
		this.element.find(".thirty").click(function(){
			that._trigger("onThirtyClicked");
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