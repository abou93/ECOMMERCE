package ecommerce.service;

import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import ecommerce.dao.ClientDAO;
import ecommerce.dao.ClientDAOImpl;
import ecommerce.dto.Client;

@ManagedBean(name = "myBean")
public class GestionClientImpl implements GestionClient{
	String result = "bonjour coco";
	ClientDAO clientDao = new ClientDAOImpl();
	Client client = new Client();
	FacesContext facesContext;
	HttpSession session = null;

	public Client getClient(){
		return client;
	}

	@SuppressWarnings("deprecation")
	@Override
	public String verifierClient() {
		Client oneClient = clientDao.verifierClient(client.getNom(), client.getMdp());
		facesContext = FacesContext.getCurrentInstance();
		session = (HttpSession) facesContext.getExternalContext().getSession(true);
		session.setAttribute("client", oneClient);
		if(session.getValue("client") != null){
			return "index.jsp?faces-redirect=true"; //sucess
		}else{
			return "connexion.jsp?faces-redirect=true"; //null
		}
		
	}

	@SuppressWarnings("deprecation")
	public String verifierSiLaSessionExiste(){
		facesContext = FacesContext.getCurrentInstance();
		session = (HttpSession) facesContext.getExternalContext().getSession(true);
		System.out.println(session);
		Object data = session.getValue("client");
		System.out.println(data);
		if(data != null){
			return "confirme.jsp?faces-redirect=true"; //sucess
		}else{
			return "connexion.jsp?faces-redirect=true"; //null
		}
	}

	
	@Override
	public String ajouterClient() {
		clientDao.ajouterClient(client);
		// check insert here
		// if insert success
		if (client != null) {
			facesContext = FacesContext.getCurrentInstance();
			session = (HttpSession) facesContext.getExternalContext().getSession(true);
			session.setAttribute("client", client);
			return "index.jsp?faces-redirect=true"; //sucess
		}
		else
			return "inscription.jsp?faces-redirect=true"; //null
	}
	
	@Override
	public Client recupererClientById(Long id) {
		return clientDao.recupererClientById(id);
	}

}
