package Servlets;

import BDD.ConnexionBDD;
import Beans.Admin;
import Beans.Event;
import Beans.Location;
import Beans.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

public class AdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        HttpSession session = request.getSession();

        User current_user = (User) session.getAttribute("current_user");

        if(current_user == null){
            request.getRequestDispatcher( "/user_servlet" ).forward( request, response );
        }
        else if(current_user.getRole().trim().equals("ADMIN")) {
            int user_id = current_user.getId();
            //String user_del =  request.getParameter("user_del");
            ConnexionBDD sc = new ConnexionBDD();

            String description =  request.getParameter("description");

            if(description!=null) {
                java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
                String sql_description =  "INSERT INTO `covid`.`Event` (`date`,`description`) VALUES ('"+date+"','"+description+"');";
                sc.doUpdate(sql_description);
            }

            String delete_event =  request.getParameter("delete_event");

            if(delete_event!=null) {
                int eventId = Integer.parseInt(delete_event);
                String sql_delete_event =  "DELETE FROM `covid`.`Event` WHERE  `id`="+eventId+";";
                sc.doUpdate(sql_delete_event);
            }

            String delete_user =  request.getParameter("delete_user");

            if(delete_user!=null) {
                int userId = Integer.parseInt(delete_user);
                String sql_delete_user =  "DELETE FROM `covid`.`User` WHERE  `id`="+userId+";";
                String sql_delete_user_friends =  "DELETE FROM `covid`.`ami` WHERE  `user1`="+userId+" OR `user2`="+userId+";";
                sc.doUpdate(sql_delete_user);
                sc.doUpdate(sql_delete_user_friends);
            }

            String positivite =  request.getParameter("positivite");

            if(positivite!=null) {
                int userId = Integer.parseInt(positivite);
                User u = null;
                try {
                    u = sc.getUser(userId);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                String sql_update_user;
                if(u.getStatut()){
                    sql_update_user =  "UPDATE `covid`.`User` SET `statut`=b'0' WHERE  `id`="+userId+";";
                }
                else {
                    sql_update_user =  "UPDATE `covid`.`User` SET `statut`=b'1' WHERE  `id`="+userId+";";
                }
                sc.doUpdate(sql_update_user);
            }



            String usersid_sql = "SELECT id FROM User WHERE id!="+current_user.getId()+";";
            ArrayList<Integer> ids = new ArrayList<Integer>();
            ResultSet res = sc.doRequest(usersid_sql);
            try {
                while(res.next()) {
                    ids.add(res.getInt("id"));
                }
            }
            catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            ArrayList<User> users = new ArrayList<User>();
            for(int i=0; i<ids.size();i++) {
                try {
                    users.add(sc.getUser(ids.get(i)));
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }

            System.out.println(users.size());

            ArrayList<Event> events = sc.getAllEvent();

            Admin admin = new Admin(users,events);

            ArrayList<Location> locations = sc.getAllLocations();
            request.setAttribute("locations", locations);

            session.setAttribute("admin", admin);
            request.getRequestDispatcher( "/admin.jsp" ).forward( request, response );
        }
        else{
            request.getRequestDispatcher( "/user_servlet" ).forward( request, response );
        }
    }
}
