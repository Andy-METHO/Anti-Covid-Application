package mybean;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	public static final String cookie_name = "user";
	public static final String cookie_value = "value";
	
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		
        //On redirige le contrôle à une jps ( connectionView.jsp )
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/connectView.jsp");
		
		disp.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubPrintWriter out = res.getWriter();

        //On redirige le contrôle à une jps ( connectionView.jsp )
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/connectView.jsp");
		PrintWriter out = response.getWriter();
				
		//Variable user et mdp qui récupère la valeur des champs user et mdp
		String name = request.getParameter( cookie_name );
        String value = request.getParameter( cookie_value );
        
        if(cookie_name!="" && cookie_value!="") {
        	if(cookie_name!="root" && cookie_value!="teemo") {
        		this.getServletContext().getRequestDispatcher("/WEB-INF/ConnexionBDD.jsp").forward(request, response);  
        	}
        	this.getServletContext().getRequestDispatcher("/WEB-INF/userView.jsp").forward(request, response);  
        }        
	}
}
