package ecommerce.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecommerce.dto.Produit;
import ecommerce.service.GestionDesProduits;
import ecommerce.service.GestionDesProduitsImpl;


@WebServlet("/produit")
public class ActionsLieesAuProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		GestionDesProduits gestionDesProduits = new GestionDesProduitsImpl();
		List<Produit> produits = gestionDesProduits.recupererToutsLesProduits();

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println(produits); 
		out.println("Je suis dans la servlet"); // mon retour ici
	}

	/*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	 */
}
