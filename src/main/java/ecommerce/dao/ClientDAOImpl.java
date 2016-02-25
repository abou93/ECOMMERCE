package ecommerce.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import ecommerce.dto.Client;
import ecommerce.dto.Produit;
import ecommerce.mapper.ClientMapper;
import ecommerce.mapper.ProduitMapper;
import ecommerce.util.DataSourceSql;

public class ClientDAOImpl implements ClientDAO {

	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject = new JdbcTemplate();

	public ClientDAOImpl() {
		dataSource = DataSourceSql.getDataSource();
		jdbcTemplateObject.setDataSource(dataSource);
	}

	@Override
	public Client recupererClientById(Long id) {
		String SQL = "select * from client where id = ?";
		Client client = (Client) jdbcTemplateObject.query(SQL, new Object[]{id}, new ClientMapper());
		return client;
	}

	@Override
	public Client verifierClient(String nom, String mdp) {
		String SQL = "select * from client where nom = '"+nom+"' and mdp = '"+mdp+"'";
		List <Client> oneClient = jdbcTemplateObject.query(SQL, 
				new ClientMapper());
		System.out.println(oneClient.get(0));
		return oneClient.get(0);
	}

	@Override
	public boolean ajouterClient(Client client) {
		String SQL = "insert into client values (?, ?, ?, ?)";
		int execReq = jdbcTemplateObject.update(SQL,new Object[]{client.getId(), client.getNom(), client.getPrenom(), client.getMdp()} );
		System.out.println("resultat de la requete "+ execReq);
		if (execReq > 0){
			return true;
		}else{
			return false;
		}
	}

}
