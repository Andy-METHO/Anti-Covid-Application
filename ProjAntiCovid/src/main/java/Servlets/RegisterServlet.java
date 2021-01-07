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

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String pseudo = request.getParameter("pseudo");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String birthdate = request.getParameter("birthdate");
        Date bday = null;
        try {
            bday = new SimpleDateFormat("dd/MM/yyyy").parse(birthdate);
            birthdate = new SimpleDateFormat("yyyy-MM-dd").format(bday);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        ConnexionBDD sc = new ConnexionBDD();

        if(!login.equals("") && !password.equals("")) {

            try {
                if(!sc.userNameExists(login)){
                    boolean succes = sc.createUser(login, password, pseudo, nom, prenom, birthdate);
                    System.out.println("Création de l'user");
                    if(succes){
                        System.out.println("Création réussie");

                        User current_user = sc.getUser(pseudo);
                        session.setAttribute("current_user",current_user);
                        request.setAttribute("current_user",current_user);
                    }
                    else{
                        session.setAttribute("msg_err_register","Les données rentrées sont incorrectes !");
                        System.out.println("Création échouée");
                    }
                }
                else {
                    session.setAttribute("msg_err_register","Login existant");

                    System.out.println("Login existant");
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
        else {

            session.setAttribute("msg_err_register","Les données rentrées sont incorrectes !");

            session.setAttribute("current_user",null);
            request.setAttribute("current_user",null);
        }

        response.sendRedirect(request.getContextPath()+"/user_servlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher( "/user_servlet" ).forward( request, response );
    }
}
