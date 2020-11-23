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
//@WebServlet("/LogServlet")
public class LogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	public static final String cookie_name = "user";
	public static final String cookie_value = "value";
	
    public LogServlet() {
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
		String user = request.getParameter(cookie_name);
		String value = request.getParameter(cookie_value);
		if(cookie_name !="admin") {
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/cookiesView.jsp");
		
		disp.forward(request,response);}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubPrintWriter out = res.getWriter();
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/cookiesView.jsp");

        //On redirige le contrôle à une jps ( connectionView.jsp )     
		disp.forward(request,response); 
	}
}
