<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!-- <title>E-Commerce - Confirmation de la commande</title> -->
<f:view>
<jsp:include page="./header.jsp" />

<%if(null == session.getAttribute("client")){response.sendRedirect("./index.jsp");}%>
<jsp:include page="./nav.jsp" />

<!-- Page Content -->
<div class="container">

	<!-- Title -->
	<div class="row">
		<div class="col-lg-12">
			<h3>Confirmer la commande</h3>
		</div>
	</div>

	<!-- /.row -->
	Confirmation
	<h:form>
		<p class="btn">
			<h:commandButton value="Annuler" action="./panier.jsp" />
			<h:commandButton value="Payer" action="./commande.jsp" />
		</p>
	</h:form>
	<!-- /.row -->

        <hr>

	<jsp:include page="./footer.jsp" />   
</f:view>