/*
 * Fichier qui fait le lien entre la servlet et le site.
 * */
var url = window.location.href;
if(url == "http://localhost:8080/e-commerce/faces/index.jsp"){
	$.ajax({
		url: "./produit", 
		method: "GET",
		success: function(result){
			var data = JSON.parse(result);
			for(var i = 0; i<data.length; i++){
				var divRow = $(".listProduct");
				divRow.append('<div class="col-md-3 col-sm-6 hero-feature">' +
						'<div class="thumbnail">'+
						'<img src="http://placehold.it/800x500" alt="">'+
						'<div class="caption">'+
						'<h3>'+data[0].name+'</h3>'+
						'<span class="price">'+data[0].prix+' &euro;</span>'+
						'<p text-align="center">'+
						'<span class="btn btn-primary">Buy Now!</span> '+
						'</p>'+
						'</div>'+
						'</div>'+
				'</div>');
			}
			console.log(JSON.parse(result).length)
		}
	});

}

