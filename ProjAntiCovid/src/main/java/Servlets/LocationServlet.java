package Servlets;

import BDD.ConnexionBDD;
import Beans.Event;
import Beans.Location;
import Beans.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import static java.lang.Integer.parseInt;

public class LocationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String location_name = request.getParameter("location_name");
        String location_address = request.getParameter("location_address");
        String location_lat = request.getParameter("location_lat");
        String location_long = request.getParameter("location_long");

        System.out.println(location_name+" "+location_address+" "+location_long+" "+location_lat);

        HttpSession session = request.getSession();
        ConnexionBDD sc = new ConnexionBDD();

        if(!location_name.equals("") && !location_address.equals("")) {
            boolean succes = false;
            try {
                if(!sc.locationExists(location_name, location_address)){
                    if(location_lat.equals("") && location_long.equals("")){
                        succes = sc.createLocation(location_name, location_address);
                    }
                    else {
                        succes = sc.createLocation(location_name, location_address, Float.parseFloat(location_lat), Float.parseFloat(location_long));
                    }

                    System.out.println("Création du lieu");
                    if(succes){
                        System.out.println("Création réussie");
                    }
                    else{
                        session.setAttribute("msg_err_location","Les données rentrées sont incorrectes !");
                        System.out.println("Création échouée");
                    }
                }
                else {
                    session.setAttribute("msg_err_location","Lieu existant");

                    System.out.println("Lieu existant");
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
        else {

            session.setAttribute("msg_err_location","Les données rentrées sont incorrectes !");
        }

        response.sendRedirect(request.getHeader("referer"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        User current_user = (User) session.getAttribute("current_user");
        session.getAttribute("msg_err_location");

        if(current_user == null) {

            request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
            session.setAttribute("msg_err_login", "Veuillez vous connecter");
        }
        else{
            if(current_user.getRole().trim().equals("USER") || current_user.getRole().trim().equals("ADMIN")) {
                ConnexionBDD sc = new ConnexionBDD();
                ArrayList<Location> locations = sc.getAllLocations();
                request.setAttribute("locations", locations);
                request.getRequestDispatcher("/createLieu.jsp").forward(request, response);
            }
        }
    }
}
