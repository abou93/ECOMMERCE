/*
 * Fichier qui fait le lien entre la servlet et le site.
 * */
var url = window.location.href;
if(url == "http://localhost:8080/e-commerce/faces/index.jsp"){
	$.ajax({
		url: "./produit", 
		method: "GET",
		success: function(result){
			console.log(result);
		}
	});

}

