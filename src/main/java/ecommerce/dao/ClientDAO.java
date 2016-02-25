package ecommerce.dao;

import ecommerce.dto.Client;

public interface ClientDAO {

	Client recupererClientById (Long id);
	Client verifierClient(String nom, String mdp);
	boolean ajouterClient(Client client);
}
