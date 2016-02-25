package ecommerce.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeconnexionClient
 */
@WebServlet("/deconnexion")
public class DeconnexionClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		session.invalidate();
		response.sendRedirect("index.jsp");
//		if (session != null) {
//		    session.invalidate();
//		}
//		request.getRequestDispatcher("./index.jsp").forward(request, response);
	}

}
