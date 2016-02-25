package ecommerce.dto;

import java.util.Date;

public class Commande {
	private Long idCmd;
	private Integer numero;
	private Long idClient;
	private String panier;
	private Date dateCmd;
	private String finalPrice;
	
	@Override
	public String toString() {
		return "Commande [numero=" + numero + ", idClient=" + idClient + ", panier=" + panier
				+ ", dateCmd=" + dateCmd + "]";
	}
	
	public Integer getNumero() {
		return numero;
	}
	public void setNumero(Integer numero) {
		this.numero = numero;
	}
	public Long getIdClient() {
		return idClient;
	}
	public void setIdClient(Long idClient) {
		this.idClient = idClient;
	}
	public String getPanier() {
		return panier;
	}
	public void setPanier(String panier) {
		this.panier = panier;
	}
	public Date getDateCmd() {
		return dateCmd;
	}
	public void setDateCmd(Date dateCmd) {
		this.dateCmd = dateCmd;
	}

	public Long getIdCmd() {
		return idCmd;
	}

	public void setIdCmd(Long idCmd) {
		this.idCmd = idCmd;
	}
}
