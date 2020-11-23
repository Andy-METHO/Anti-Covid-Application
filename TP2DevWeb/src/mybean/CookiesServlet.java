package mybean;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cookies
 */
//@WebServlet("/CookiesServlet")
public class CookiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private Cookie cookie;
	private Cookie[] cookies;
	
	public static final String cookie_name = "user";
	public static final String cookie_value = "value";
	
    public CookiesServlet() {
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
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/cookiesView.jsp");
		
		cookies = request.getCookies();
        
        
        
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
        	Cookie cookie = new Cookie(cookie_name,cookie_value);
        	response.addCookie(cookie);
        }
        
        this.getServletContext().getRequestDispatcher("/WEB-INF/cookieView.jsp").forward(request, response);        
        
	}

}
