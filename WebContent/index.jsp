<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
<jsp:include page="./header.jsp" />

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