package ecommerce.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import ecommerce.dto.Client;

public class ClientMapper implements RowMapper<Client> {

	public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
		Client client = new Client();
		client.setId(rs.getLong("id"));
		client.setNom(rs.getString("nom"));
		client.setPrenom(rs.getString("prenom"));
		client.setMdp(rs.getString("mdp"));
		return client;
	}
}
