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

public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        HttpSession session = request.getSession();

        User current_user = (User) session.getAttribute("current_user");
        session.getAttribute("msg_err_login");
        session.getAttribute("msg_err_register");

        if (current_user == null) {

            request.getRequestDispatcher("/index.jsp").forward(request, response);
            session.setAttribute("msg-err", "Veuillez vous connecter");
        } else {
            if (current_user.getRole().trim().equals("USER") || current_user.getRole().trim().equals("ADMIN")) {
                ConnexionBDD sc = new ConnexionBDD();

                try {
                    ArrayList<Notif> notifs = sc.getUserNotifications(current_user.getId());
                    ArrayList<Notif> unreadNotifs = sc.getUnreadNotifications(current_user.getId());
                    session.setAttribute("notifs", notifs);
                    session.setAttribute("unread", unreadNotifs);
                    System.out.println("fait");
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }

                ArrayList<Location> locations = sc.getAllLocations();
                ArrayList<Event> events = sc.getUserEvents(current_user.getId());

                request.setAttribute("locations", locations);
                request.setAttribute("userEvents", events);

                request.getRequestDispatcher("/events.jsp").forward(request, response);
            }
        }

    }
}
