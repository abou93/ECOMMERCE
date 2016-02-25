package ecommerce.service;

import ecommerce.dto.Client;

public interface GestionClient {
	String verifierClient();
	
	Client recupererClientById(Long id);

	String ajouterClient();
}
