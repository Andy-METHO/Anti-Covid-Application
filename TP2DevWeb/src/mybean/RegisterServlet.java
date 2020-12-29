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
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	public static final String cookie_name = "nom";
	public static final String cookie_value = "value";
	
    public CreateUserServlet() {
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
		
        //On redirige le contr�le � une jps ( connectionView.jsp )
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/connectView.jsp");
		
		disp.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubPrintWriter out = res.getWriter();

        //On redirige le contr�le � une jps ( connectionView.jsp )
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/connectView.jsp");
		PrintWriter out = response.getWriter();
				
		//Variable user et mdp qui r�cup�re la valeur des champs user et mdp
		String name = request.getParameter( cookie_name );
        String value = request.getParameter( cookie_value );
        
        if(cookie_name!="" && cookie_value!="") {
        	//Variable correspondant � l'url de connection a � la base de donn�e de MariaDB avec "cinema" qui le nom de la BD 
    		String url = new String("jdbc:mariadb://localhost:3306/covid"); //A changer en "jdbc:mysql://localhost/..." si n�cessaire;
    		//Test qui d�termine si les champs sont vides
    			try {
    				
    				//Connection � la base de donn�e avec les identifiants MariaDB
    				Connection connect = DriverManager.getConnection(url, "root", "root");
    				Statement s = connect.createStatement();
    				
    				//Variable qui r�cupere le r�sultat de l'execution de la requ�te SQL 
    				//Requ�te qui affiche tous les films jou�s en salle

    				//Requ�te qui ajoute un film dans la base de donn�e
    				String instruc = "CREATE USER '"+ name +"'@'localhost' IDENTIFIED BY '"+ value +"';";
    				s.executeUpdate(instruc);
    				
    		        disp = this.getServletContext().getRequestDispatcher("/userView.jsp");
    				out.println("Connection r�ussi");
    				s.close();
    				
    			}
    			catch(Exception e) {
    		        disp = this.getServletContext().getRequestDispatcher("/addUser.jsp");
    				out.println("Connection impossible");
    				e.printStackTrace();
    			}    		
        	disp.forward(request, response);  
        }        
	}
    
  //M�thode init lanc� automatiquement au d�marrage de la servlet
  	public void init() {

  		//Connection au driver de la base de donn�e
  		try {
  			Class.forName("org.mariadb.jdbc.Driver");			//A changer en ""com.mysql.cj.jdbc.Driver"" si n�cessaire;
  		// Chargement du Driver JDBC Connector/J (pour MySql)
  		}
  		catch(ClassNotFoundException e){
  			System.out.println("Driver introuvable");
  			return;      
  		}
  		
  	}
}
