package ecommerce.dto;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Panier {
	private Map <Produit, Integer> panier = new HashMap<Produit, Integer>();
	private float total;


	@Override
	public String toString() {
		return "Panier [panier=" + panier + ", total=" + total + "]";
	}

	public void ajouterProduit(Produit produit, Integer qt) {
		if(panier.size() == 0){
			panier.put(produit, qt);
		}else{
			Entry<Produit, Integer> unProduit = verifier_si_le_projet_existe(produit.getId());
			if(unProduit == null){
				panier.put(produit, qt);
			}else{
				unProduit.setValue(unProduit.getValue()+1); 
			}
		}
	}

	public void reduireQteProduit(Produit produit, Integer qt) {
		Entry<Produit, Integer> unProduit = verifier_si_le_projet_existe(produit.getId());		
		if(unProduit != null){
			if(unProduit.getValue().equals(1)){
				panier.remove(unProduit);
			}else{
				unProduit.setValue(unProduit.getValue()-1); 
			}			
		}
	}

	public void supprimerProduit(Produit produit, Integer qt) {
		Entry<Produit, Integer> unProduit = verifier_si_le_projet_existe(produit.getId());
		if(unProduit != null){
			panier.remove(unProduit); 
		}		
	}

	public void supprimerPanier(){
		panier.clear();
	}

	private Entry<Produit, Integer> verifier_si_le_projet_existe(Integer id) {
		for(Map.Entry<Produit, Integer> entry: panier.entrySet()){
			Produit unProduit = entry.getKey();
			if(unProduit.getId().equals(id)){
				return entry;
			}
		}
		return null;
	}

}