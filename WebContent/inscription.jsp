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

</head>

<body>

<jsp:include page="./nav.jsp" />

<!-- Page Content -->
<div class="container">

	<!-- Title -->
	<div class="row">
		<div class="col-lg-12">
			<h3>Nouveau utilisateur</h3>
		</div>
	</div>

	<!-- /.row -->
	<h:form>
		<label for="nom">Nom</label>
		<h:inputText value="#{ClientService.client.nom}" required="true" id="nom" />
		<label for="nom">Prenom</label>
		<h:inputText value="#{ClientService.client.prenom}" required="true" id="prenom" />
		<label for="mdp">Mot de passe</label>
		<h:inputSecret value="#{ClientService.client.mdp}" required="true" id="mdp" />
		<p>
			<h:commandButton value="Inscription" action="#{ClientService.ajouterClient}" />
	</h:form>
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