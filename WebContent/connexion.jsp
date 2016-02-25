<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!-- <title>E-Commerce - Connexion</title> -->
<f:view>

<jsp:include page="./header.jsp" /> 

<jsp:include page="./nav.jsp" />

<!-- Page Content -->
<div class="container">

	<!-- Title -->
	<div class="row">
		<div class="col-lg-12">
			<h3>Connexion utilisateur</h3>
		</div>
	</div>

	<!-- /.row -->
	<h:form>
		<label for="nom">Nom</label>
		<h:inputText value="#{ClientService.client.nom}" required="true" id="nom" />
		<label for="mdp">Mot de passe</label>
		<h:inputSecret value="#{ClientService.client.mdp}" required="true" id="mdp" />
		<p>
			<h:commandButton value="Connexion" action="#{ClientService.verifierClient}" />
		</p>
	</h:form>
	<!-- /.row -->

        <hr>

   <jsp:include page="./footer.jsp" /> 
</f:view>