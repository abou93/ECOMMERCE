package ecommerce.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

import ecommerce.dao.CommandeDAO;
import ecommerce.dao.CommandeDAOImpl;
import ecommerce.dto.Commande;

public class GestionDesCommandesImpl implements GestionDesCommandes {
	String panier;
	Commande commande = new Commande();
	CommandeDAO commandeDAO = new CommandeDAOImpl();

	public Commande getCommande(){
		return commande;
	}
	
	public String getJson() throws Exception{
		InputStream in = new FileInputStream(new File("C:/workspace_parking/e-commerce/WebContent/panier/panier_001.txt"));
		BufferedReader reader = new BufferedReader(new InputStreamReader(in));
		StringBuilder out = new StringBuilder();
		String line;
		while ((line = reader.readLine()) != null) {
			out.append(line);
		}
		reader.close();	
		return out.toString();
	}
	
//	public List<Produit> jsonToListProduct(StringBuilder out) {
//		JSONArray jsonArray = new JSONArray(out.toString());
//		List<Produit> produits = new ArrayList<Produit>();  
//		if (jsonArray != null) { 
//			int len = jsonArray.length();
//			for (int i=0;i<len;i++){ 
//				Produit produit = new Produit();
//				JSONObject jsonObject = jsonArray.getJSONObject(i);
//				produit.setId(jsonObject.getInt("id"));
//				produit.setName(jsonObject.getString("name"));
//				produit.setPrix(jsonObject.getDouble("prix"));
//				produits.add(produit);
//			} 
//		}
//		return produits;
//	}
	
	@Override
	public void addCommande() {
//		commande.setDateCmd(dataaujourdhui);
//		commande.setIdClient(idClient);
		commande.setPanier(panier);
		commandeDAO.addCommande(commande);
	}
}
