<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Heroic Features - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/actionsLieesAuProduit.js"></script>
    <script src="js/FileSaver.js"></script>
    <script src="js/cookie.js"></script>
    <script type="text/javascript" src="js/panier.js"></script>
    <script type="text/javascript">
            function ajouter(idProduit, qteProduit, prixProduit)
            {
                var code = parseInt(document.getElementById(idProduit).value);
                var qte = parseInt(document.getElementById(qteProduit).value);
                var prix = parseInt(document.getElementById(prixProduit).value);
                var monPanier = new Panier();
                monPanier.ajouterArticle(code, qte, prix);
                var tableau = document.getElementById("tableau");
                var longueurTab = parseInt(document.getElementById("nbreLignes").innerHTML);
                if (longueurTab > 0)
                {
                    for(var i = longueurTab ; i > 0  ; i--)
                    {
                        monPanier.ajouterArticle(parseInt(tableau.rows[i].cells[0].innerHTML), parseInt(tableau.rows[i].cells[1].innerHTML), parseInt(tableau.rows[i].cells[2].innerHTML));
                        tableau.deleteRow(i);
                    }
                }
                var longueur = monPanier.liste.length;
                for(var i = 0 ; i < longueur ; i++)
                {
                    var ligne = monPanier.liste[i];
                    var ligneTableau = tableau.insertRow(-1);
                    var colonne1 = ligneTableau.insertCell(0);
                    colonne1.innerHTML += ligne.getCode();
                    var colonne2 = ligneTableau.insertCell(1);
                    colonne2.innerHTML += ligne.qteArticle;
                    var colonne3 = ligneTableau.insertCell(2);
                    colonne3.innerHTML += ligne.prixArticle;
                    var colonne4 = ligneTableau.insertCell(3);
                    colonne4.innerHTML += ligne.getPrixLigne();
                    var colonne5 = ligneTableau.insertCell(4);
                    colonne5.innerHTML += "<button class=\"btn btn-primary\" type=\"submit\" onclick=\"supprimer(this.parentNode.parentNode.cells[0].innerHTML)\"><span class=\"glyphicon glyphicon-remove\"></span> Retirer</button>";
                }
                document.getElementById("prixTotal").innerHTML = monPanier.getPrixPanier();
                document.getElementById("nbreLignes").innerHTML = longueur;
                eraseCookie("panierJSON");
                var myJsonString = JSON.stringify(monPanier.liste);
                createCookie("panierJSON",myJsonString,5);
            }
            
            function supprimer(code)
            {
                var monPanier = new Panier();
                var tableau = document.getElementById("tableau");
                var longueurTab = parseInt(document.getElementById("nbreLignes").innerHTML);
                if (longueurTab > 0)
                {
                    for(var i = longueurTab ; i > 0  ; i--)
                    {
                        monPanier.ajouterArticle(parseInt(tableau.rows[i].cells[0].innerHTML), parseInt(tableau.rows[i].cells[1].innerHTML), parseInt(tableau.rows[i].cells[2].innerHTML));
                        tableau.deleteRow(i);
                    }
                }
                monPanier.supprimerArticle(code);
                var longueur = monPanier.liste.length;
                for(var i = 0 ; i < longueur ; i++)
                {
                    var ligne = monPanier.liste[i];
                    var ligneTableau = tableau.insertRow(-1);
                    var colonne1 = ligneTableau.insertCell(0);
                    colonne1.innerHTML += ligne.getCode();
                    var colonne2 = ligneTableau.insertCell(1);
                    colonne2.innerHTML += ligne.qteArticle;
                    var colonne3 = ligneTableau.insertCell(2);
                    colonne3.innerHTML += ligne.prixArticle;
                    var colonne4 = ligneTableau.insertCell(3);
                    colonne4.innerHTML += ligne.getPrixLigne();
                    var colonne5 = ligneTableau.insertCell(4);
                    colonne5.innerHTML += "<button class=\"btn btn-primary\" type=\"submit\" onclick=\"supprimer(this.parentNode.parentNode.cells[0].innerHTML)\"><span class=\"glyphicon glyphicon-remove\"></span> Retirer</button>";
                }
                document.getElementById("prixTotal").innerHTML = monPanier.getPrixPanier();
                document.getElementById("nbreLignes").innerHTML = longueur;
                eraseCookie("panierJSON");
                var myJsonString = JSON.stringify(monPanier.liste);
                createCookie("panierJSON",myJsonString,5);
            }
        </script>

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Start Bootstrap</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="#">About</a></li>
				<li><a href="./connexion.jsp">Connexion</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>

<!-- Page Content -->
<div class="container" id="containerListProduit">
	<div class="row">
		<div class="col-lg-12">
			<h3>Panier</h3>
			<table id="tableau" class="table">
                    <thead>
                        <tr>
                            <th>Code Produit</th>
                            <th>Qte</th>
                            <th>Prix unitaire</th>
                            <th>Prix de la ligne</th>
                            <th>Supprimer</th>
                        </tr>
                    </thead>
                </table>
                <br><label>Prix du panier total</label> : <label id = "prixTotal"></label>
                <label id = "nbreLignes" hidden>0</label>
		</div>
	</div>

	<!-- Title -->
	<div class="row">
		<div class="col-lg-12">
			<h3>Liste des produits</h3>
		</div>
	</div>
	<!-- /.row -->

	<!-- Page Features -->
	<div class="row text-center">
		<% for(int i=0; i<12 ; i++){ %>
			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<img src="http://placehold.it/800x500" alt="">
					<div class="caption">
						<input type = "hidden" id = "id<%=i%>" class="input-sm form-control" value = "<%=i%>"></input><br><br>
						<h3>Nom du produit <%=i%></h3>

						<input type = "hidden" id = "prix<%=i%>" class="input-sm form-control" value = "15"></input><br><br>
						<span class="price" >15</span>&euro;
						
						<p text-align="center">
							<input type = "number" id = "qte<%=i%>" style="width:120px" class="input-sm form-control col-md-offset-3" value = "1"></input><br><br>
							<button class="btn btn-primary" type="submit" onclick="ajouter('id<%=i%>', 'qte<%=i%>', 'prix<%=i%>')">Ajouter au panier</button> 
						</p>
					</div>
				</div>
			</div>
		<%} %>

		<!-- /.row -->

	<!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

</body>

</html>
</f:view>