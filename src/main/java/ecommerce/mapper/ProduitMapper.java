package ecommerce.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import ecommerce.dto.Produit;

public class ProduitMapper implements RowMapper<Produit> {

	public Produit mapRow(ResultSet rs, int rowNum) throws SQLException {
		Produit produit = new Produit();
		produit.setId(rs.getInt("id"));
		produit.setName(rs.getString("name"));
		produit.setPrix(rs.getFloat("prix"));
		return produit;
	}
}
