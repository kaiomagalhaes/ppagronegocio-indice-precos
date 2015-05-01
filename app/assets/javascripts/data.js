DataAux = function(){
	var DataAux = function(){}

	DataAux.prototype.getJSON = function(url,callback){
		$.get(url,callback)
	}

	return new DataAux();
}();