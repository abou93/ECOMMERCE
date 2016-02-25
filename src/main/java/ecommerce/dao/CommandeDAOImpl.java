package ecommerce.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import ecommerce.dto.Commande;
import ecommerce.util.DataSourceSql;

public class CommandeDAOImpl implements CommandeDAO {

	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject = new JdbcTemplate();

	public CommandeDAOImpl() {
		dataSource = DataSourceSql.getDataSource();
		jdbcTemplateObject.setDataSource(dataSource);
	}
	
	@Override
	public void addCommande(Commande cmd) {
		
//		String SQL = "insert into commande values (?, ?, ?, ?, ?)";
//		jdbcTemplateObject.update(SQL,new Object[]{cmd.getDateCmd(), cmd.getIdClient(), cmd.getDateCmd(), cmd.getNumero(), cmd.getPanier().getId()} );

	}

}
