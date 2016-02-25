<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
<jsp:include page="./header.jsp" />

<<<<<<< HEAD
=======
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

</head>

<body>

>>>>>>> origin/master
<jsp:include page="./nav.jsp" />

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
	<div class="row text-center listProduct">
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
        
    <jsp:include page="./footer.jsp" />
</f:view>