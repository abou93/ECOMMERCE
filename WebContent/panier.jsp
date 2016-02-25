<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!-- <titlE-Commerce Panier</title> -->

<f:view>
<jsp:include page="./header.jsp" />

<%if(null == session.getAttribute("client")){response.sendRedirect("./index.jsp");}%>

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

	<!-- Page Features -->
	<div class="row text-center">

	<!-- /.row -->

        <hr>

   <jsp:include page="./footer.jsp" />
</f:view>