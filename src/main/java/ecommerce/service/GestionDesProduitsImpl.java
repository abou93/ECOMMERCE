package ecommerce.service;

import java.util.List;

import ecommerce.dao.ProduitDAO;
import ecommerce.dao.ProduitDAOImpl;
import ecommerce.dto.Produit;

public class GestionDesProduitsImpl implements GestionDesProduits {
	ProduitDAO produitDao = new ProduitDAOImpl();

	@Override
	public List<Produit> recupererToutsLesProduits() {
		List<Produit> produits = produitDao.recupererTousLesProduits();	
		return produits;
	}
}
