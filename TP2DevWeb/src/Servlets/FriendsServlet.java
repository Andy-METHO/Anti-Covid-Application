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


public class FriendsServlet extends HttpServlet {
	
	private Friends friendslist;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @SuppressWarnings("unlikely-arg-type")
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
	        String friends_sql = "SELECT id,pseudo FROM ami,user WHERE ( user1="+user_id+" OR user2="+user_id+" ) AND valide=1 AND ( user1=id OR user2=id );";
	        String request_received_sql = "SELECT id,pseudo FROM ami,user WHERE user2="+user_id+" AND valide=0 AND user1=id;";
	        String request_send_sql = "SELECT id,pseudo FROM ami,user WHERE user1="+user_id+" AND valide=0 AND user2=id;";
	        ArrayList<User> friends = new ArrayList<User>();
	        ArrayList<User> request_received = new ArrayList<User>();
	        ArrayList<User> request_send = new ArrayList<User>();
	        try {
	        	results = sc.doRequest(friends_sql);
	        	while(results.next()) {
	        		if(!sc.getUser(results.getString(2)).getPseudo().equals(current_user.getPseudo())) {
	        			friends.add(sc.getUser(results.getString(2)));
	        		}
	        	}
	        	results = sc.doRequest(request_received_sql);
	        	while(results.next()) {
	        		request_received.add(sc.getUser(results.getString(2)));
	        	}
	        	results = sc.doRequest(request_send_sql);
	        	while(results.next()) {
	        		request_send.add(sc.getUser(results.getString(2)));
	        	}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	friendslist = new Friends(friends,request_received,request_send);
	    	
	    	String delatefriend =  request.getParameter("delatefriend");
	    	if(delatefriend!=null){
	    		User userdelatefriend = friendslist.searchFriendbyPseudo(delatefriend);
	    		String sql_string_delatefriend =  "DELETE FROM `covid`.`ami` WHERE  ((`user1`="+current_user.getId()+" AND `user2`="+userdelatefriend.getId()+") OR (`user1`="+userdelatefriend.getId()+" AND `user2`="+current_user.getId()+")) AND `valide`=b'1' LIMIT 1;";
	    		sc.doRequest(sql_string_delatefriend);
	    		friendslist.removeFriends(userdelatefriend);
	    	}

	    	
	    	String delateRequest_received =  request.getParameter("delateRequest_received");
	    	if(delateRequest_received!=null){
	    		User userdelateRequest_received = friendslist.searchRequest_receivedbyPseudo(delateRequest_received);
	    		String sql_string_delateRequest_received =  "DELETE FROM `covid`.`ami` WHERE (`user1`="+userdelateRequest_received.getId()+" AND `user2`="+current_user.getId()+") AND `valide`=b'0' LIMIT 1;";
	    		sc.doRequest(sql_string_delateRequest_received);
	    		friendslist.removeRequest_received(userdelateRequest_received);
	    	}
	    	
	    	String addRequest_received =  request.getParameter("addRequest_received");
	    	if(addRequest_received!=null){
	    		User useraddRequest_received = friendslist.searchRequest_receivedbyPseudo(addRequest_received);
	    		String sql_string_addRequest_received = "UPDATE `covid`.`ami` SET `valide`=b'1' WHERE  `user1`="+useraddRequest_received.getId()+" AND `user2`="+current_user.getId()+" AND `valide`=b'0' LIMIT 1;";
	    		sc.doRequest(sql_string_addRequest_received);
	    		friendslist.addFriends(useraddRequest_received);
	    		friendslist.removeRequest_received(useraddRequest_received);
	    	}
	    	
	    	String delateRequest_send =  request.getParameter("delateRequest_send");
	    	if(delateRequest_send!=null){
	    		User userdelateRequest_send = friendslist.searchRequest_sendbyPseudo(delateRequest_send);
	    		String sql_string_delateRequest_send =  "DELETE FROM `covid`.`ami` WHERE  (`user1`="+current_user.getId()+" AND `user2`="+userdelateRequest_send.getId()+") AND `valide`=b'0' LIMIT 1;";
	    		sc.doRequest(sql_string_delateRequest_send);
	    		friendslist.removeRequest_send(userdelateRequest_send);
	    	}

	        if(pseudo!=null) {
	        	if(friendslist.searchFriendbyPseudo(pseudo)==null) {
	        		User addUser = sc.getUser(pseudo);
	        		friendslist.addRequest_send(addUser);
	        		String sql_string =  "INSERT INTO `covid`.`ami` (`user1`, `user2`, `valide`) VALUES ('"+user_id+"', '"+addUser.getId()+"', b'0');";
		            sc.doRequest(sql_string);
	        	}
	        }   	
	    		    	
			session.setAttribute("friendslist", friendslist);
			
	        
	        request.getRequestDispatcher( "/friend.jsp" ).forward( request, response );
        }
    }
}
