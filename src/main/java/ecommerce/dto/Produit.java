package ecommerce.dto;

import javax.annotation.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class Produit {
	private Integer id;
	private String name;
	private double prix;
	
	public Produit(){
		
	}
	
	public Produit(Integer id, String name, float prix) {
		this.id = id;
		this.name = name;
		this.prix = prix;
	}
	

	@Override
	public String toString() {
		return "Produit [id=" + id + ", name=" + name + ", prix=" + prix + "]";
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}
	
	
}
