package Servlets;

import BDD.ConnexionBDD;
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
import java.util.Date;

import static java.lang.Integer.parseInt;

public class EventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        int event_location = parseInt(request.getParameter("event_location"));
        String event_date = request.getParameter("event_date");
        String event_start = request.getParameter("event_start");
        String event_end = request.getParameter("event_end");
        String event_description = request.getParameter("event_description");

        Date date = null;
        Date start = null;
        Date end = null;
        try {
            date = new SimpleDateFormat("dd/MM/yyyy").parse(event_date);
            event_date = new SimpleDateFormat("yyyy-MM-dd").format(date);

            start = new SimpleDateFormat("HH:mm").parse(event_start);
            event_start = new SimpleDateFormat("HH:mm:ss").format(start);

            end = new SimpleDateFormat("HH:mm").parse(event_end);
            event_end = new SimpleDateFormat("HH:mm:ss").format(end);

        } catch (ParseException e) {
            e.printStackTrace();
        }

        System.out.println(event_date+" "+event_start+" "+ event_description);

        HttpSession session = request.getSession();
        ConnexionBDD sc = new ConnexionBDD();

        if(!event_date.equals("") && !event_start.equals("") && !event_end.equals("") && !event_description.equals("")) {

            try {
                if(!sc.eventExists(event_description, event_location)){
                    boolean succes = sc.createEvent(event_location, event_date, event_start, event_end, event_description);
                    System.out.println("Création de l'event");
                    if(succes){
                        System.out.println("Création réussie");
                    }
                    else{
                        session.setAttribute("msg_err_event","Les données rentrées sont incorrectes !");
                        System.out.println("Création échouée");
                    }
                }
                else {
                    session.setAttribute("msg_err_event","Event existant");

                    System.out.println("Event existant");
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
        else {

            session.setAttribute("msg_err_event","Les données rentrées sont incorrectes !");
        }

        response.sendRedirect(request.getHeader("referer"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getHeader("referer"));
    }
}
