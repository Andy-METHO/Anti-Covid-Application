package Servlets;

import BDD.ConnexionBDD;
import Beans.Event;
import Beans.Location;
import Beans.Notif;
import Beans.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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

        if (current_user == null) {
            request.getRequestDispatcher("/accueil").forward(request, response);
        } else if (current_user.getRole().trim().equals("ADMIN")) {

            ConnexionBDD sc = new ConnexionBDD();

            String description = request.getParameter("description");

            if (description != null) {
                java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
                String sql_description = "INSERT INTO `covid`.`Event` (`date`,`description`) VALUES ('" + date + "','" + description + "');";
                sc.doUpdate(sql_description);
            }

            String delete_event = request.getParameter("delete_event");

            if (delete_event != null) {
                int eventId = Integer.parseInt(delete_event);
                String sql_delete_event = "DELETE FROM `covid`.`Event` WHERE  `id`=" + eventId + ";";
                sc.doUpdate(sql_delete_event);
            }

            String delete_user = request.getParameter("delete_user");

            if (delete_user != null) {
                int userId = Integer.parseInt(delete_user);
                String sql_delete_user = "DELETE FROM `covid`.`User` WHERE  `id`=" + userId + ";";
                String sql_delete_user_friends = "DELETE FROM `covid`.`ami` WHERE  `user1`=" + userId + " OR `user2`=" + userId + ";";
                sc.doUpdate(sql_delete_user);
                sc.doUpdate(sql_delete_user_friends);
            }

            String positivite = request.getParameter("positivite");

            if (positivite != null) {
                int userId = Integer.parseInt(positivite);
                User u = null;
                try {
                    u = sc.getUser(userId);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                String sql_update_user;
                if (u.getStatut()) {
                    sql_update_user = "UPDATE `covid`.`User` SET `statut`=b'0' WHERE  `id`=" + userId + ";";
                } else {
                    sql_update_user = "UPDATE `covid`.`User` SET `statut`=b'1' WHERE  `id`=" + userId + ";";
                }
                sc.doUpdate(sql_update_user);
            }

            String delete_location = request.getParameter("delete_location");

            if (delete_location != null) {
                int locationId = Integer.parseInt(delete_location);
                String sql_update_event_location = "UPDATE `Event` SET `lieu` = null WHERE `Event`.`lieu` =" + locationId + ";";
                String sql_delete_location = "DELETE FROM Location WHERE `id`=" + locationId + ";";
                sc.doUpdate(sql_update_event_location);
                sc.doUpdate(sql_delete_location);
            }

            ArrayList<User> users = sc.getAllUsers();
            System.out.println(users.size());
            ArrayList<Event> events = sc.getAllEvent();
            ArrayList<Location> locations = sc.getAllLocations();

            try {
                ArrayList<Notif> notifs = sc.getUserNotifications(current_user.getId());
                session.setAttribute("notifs", notifs);
                session.setAttribute("unread", "");
                System.out.println("fait");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

            request.setAttribute("locations", locations);
            request.setAttribute("events", events);
            request.setAttribute("users", users);

            request.getRequestDispatcher("/admin.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/accueil").forward(request, response);
        }
    }
}
