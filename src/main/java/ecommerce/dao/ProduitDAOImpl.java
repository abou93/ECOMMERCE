package ecommerce.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import ecommerce.dto.Produit;
import ecommerce.mapper.ProduitMapper;
import ecommerce.util.DataSourceSql;

public class ProduitDAOImpl implements ProduitDAO {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject = new JdbcTemplate();

	public ProduitDAOImpl() {
		dataSource = DataSourceSql.getDataSource();
		jdbcTemplateObject.setDataSource(dataSource);
	}

	@Override
	public List<Produit> recupererTousLesProduits() {
		String SQL = "select * from produit";
		List <Produit> produits = jdbcTemplateObject.query(SQL, 
				new ProduitMapper());
		return produits;
	}

}
