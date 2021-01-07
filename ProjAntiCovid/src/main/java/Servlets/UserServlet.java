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

        if(current_user == null) {

            request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
            session.setAttribute("msg-err", "Veuillez vous connecter");
        }
        else{
            if(current_user.getRole().trim().equals("USER") || current_user.getRole().trim().equals("ADMIN")) {
                ConnexionBDD sc = new ConnexionBDD();
                ArrayList<Location> locations = sc.getAllLocations();
                request.setAttribute("locations", locations);
                request.getRequestDispatcher( "/events.jsp" ).forward( request, response );
            }
        }

    }
}
