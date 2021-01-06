package Servlets;

import Beans.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BDD.ConnexionBDD;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


@SuppressWarnings("serial")
public class PositifServlet extends HttpServlet {
	
	private Friends friendslist;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        HttpSession session = request.getSession();

        User current_user = (User) session.getAttribute("current_user");
        if(current_user == null) {

            request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
        }
        else {
	        int user_id = current_user.getId();
	        String pseudo =  request.getParameter("pseudo");
	        ConnexionBDD sc = new ConnexionBDD();
	        ResultSet results;
	        String friends_sql = "SELECT id,pseudo FROM ami,User WHERE ( user1="+user_id+" OR user2="+user_id+" ) AND valide=1 AND ( user1=id OR user2=id );";
	        ArrayList<User> friends = new ArrayList<User>();
	        try {
	        	results = sc.doRequest(friends_sql);
	        	while(results.next()) {
	        		if(!sc.getUser(results.getString(2)).getPseudo().equals(current_user.getPseudo())) {
	        			friends.add(sc.getUser(results.getString(2)));
	        		}
	        	}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	friendslist = new Friends(friends);
	    			    		    	
			session.setAttribute("friendslist", friendslist);
			
	        
	        request.getRequestDispatcher( "/positif.jsp" ).forward( request, response );
        }
    }
}
