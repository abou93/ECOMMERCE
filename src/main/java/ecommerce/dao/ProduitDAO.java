package ecommerce.dao;

import java.util.List;

import ecommerce.dto.Produit;

public interface ProduitDAO {
	List<Produit> recupererTousLesProduits ();
}
