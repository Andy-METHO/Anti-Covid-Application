package mybean;
import java.sql.*;
import java.io.IOException;
import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/*
 * Servlet permettant de g�rer l'affichage des films jou� dans les salles de cin�ma
 */

@WebServlet("/ConnexionBDD")
public class ConnexionBDD extends HttpServlet{
	
	
	
	private static final long serialVersionUID = 1L;
	
	//Strings qui initialise les champs user et mdp de la m�thode get
	public static final String CHAMP_USER = "user";
	public static final String CHAMP_MDP = "mdp";
	
	
	public ConnexionBDD() {
		super();
	}
	
	
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException { 
		res.setContentType("text/plain"); 
		res.getWriter().append("Served at: ").append(req.getContextPath());
		PrintWriter out = res.getWriter();
		HttpSession session = req.getSession();
		
		
		//Variable user et mdp qui r�cup�re la valeur des champs user et mdp
		String user = req.getParameter( CHAMP_USER );
        String mdp = req.getParameter( CHAMP_MDP );

        //On redirige le contr�le � une jps ( CinemaView.jsp )
		
        //Variable correspondant � l'url de connection a � la base de donn�e de MariaDB avec "cinema" qui le nom de la BD 
		String url = new String("jdbc:mariadb://localhost:3306/cinema"); 
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/connectView.jsp");
		//Test qui d�termine si les champs sont vides
		if (user!=null && mdp!=null ) {
			try {
				
				//Connection � la base de donn�e avec les identifiants MariaDB
				Connection connect = DriverManager.getConnection(url, user, mdp);
				Statement s = connect.createStatement();
				
				//Variable qui r�cupere le r�sultat de l'execution de la requ�te SQL 
				//Requ�te qui affiche tous les films jou�s en salle


		        disp = this.getServletContext().getRequestDispatcher("/adminView.jsp");
				out.println("Connection r�ussi");
				s.close();
				
			}
			catch(Exception e) {
		        disp = this.getServletContext().getRequestDispatcher("/userView.jsp");
				out.println("Connection impossible");
				e.printStackTrace();
			}
			disp.forward(req,res);
		}
		
		//Redirection vers le login si la connection est null
        else {
        	res.sendRedirect("http://localhost:8080/TP2DevWeb/LoginServlet");
        }
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	//M�thode init lanc� automatiquement au d�marrage de la servlet
	public void init() {

		//Connection au driver de la base de donn�e
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		// Chargement du Driver JDBC Connector/J (pour MySql)
		}
		catch(ClassNotFoundException e){
			System.out.println("Driver introuvable");
			return;      
		}
		
	}
}
