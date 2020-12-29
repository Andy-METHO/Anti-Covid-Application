package Servlets;

import BDD.ConnexionBDD;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String birthdate = request.getParameter("birthdate");

        HttpSession session = request.getSession();
        ConnexionBDD sc = new ConnexionBDD();

        if(!login.equals("") && !password.equals("")) {

            try {
                if(!sc.userNameExists(login)){
                    sc.createUser(login, password, nom, prenom, birthdate);
                }
                session.setAttribute("msg-err","Login existant");
                out.println("<p>Le login existe déjà</p>");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
        else {

            session.setAttribute("msg-err"," login ou mot de passe mal formé !");

            session.setAttribute("current_user",null);
            request.setAttribute("current_user",null);
        }

        response.sendRedirect(request.getContextPath()+"/user_servlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath()+"/user_servlet");
    }
}
