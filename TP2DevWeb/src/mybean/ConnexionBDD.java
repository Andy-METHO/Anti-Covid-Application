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
 * Servlet permettant de gérer l'affichage des films joué dans les salles de cinéma
 */

@WebServlet("/ConnexionBDD")
public class ConnexionBDD extends HttpServlet{
	
	
	
	private static final long serialVersionUID = 1L;
	
	//Strings qui initialise les champs user et mdp de la méthode get
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
		
		
		//Variable user et mdp qui récupère la valeur des champs user et mdp
		String user = req.getParameter( CHAMP_USER );
        String mdp = req.getParameter( CHAMP_MDP );

        //On redirige le contrôle à une jps ( CinemaView.jsp )
		
        //Variable correspondant à l'url de connection a à la base de donnée de MariaDB avec "cinema" qui le nom de la BD 
		String url = new String("jdbc:mariadb://localhost:3306/cinema"); 
		RequestDispatcher disp = this.getServletContext().getRequestDispatcher("/connectView.jsp");
		//Test qui détermine si les champs sont vides
		if (user!=null && mdp!=null ) {
			try {
				
				//Connection à la base de donnée avec les identifiants MariaDB
				Connection connect = DriverManager.getConnection(url, user, mdp);
				Statement s = connect.createStatement();
				
				//Variable qui récupere le résultat de l'execution de la requète SQL 
				//Requète qui affiche tous les films joués en salle


		        disp = this.getServletContext().getRequestDispatcher("/adminView.jsp");
				out.println("Connection réussi");
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
	
	
	//Méthode init lancé automatiquement au démarrage de la servlet
	public void init() {

		//Connection au driver de la base de donnée
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
