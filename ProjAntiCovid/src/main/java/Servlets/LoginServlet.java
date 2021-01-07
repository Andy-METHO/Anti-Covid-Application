package Servlets;

import BDD.ConnexionBDD;
import Beans.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        ConnexionBDD sc = new ConnexionBDD();

        if(!login.equals("") && !password.equals("")) {

            User current_user = null;
            try {
                current_user = sc.getUser(login,password);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

            session.setAttribute("current_user",current_user);
            request.setAttribute("current_user",current_user);

            if (current_user != null){
                System.out.println("Login réussi");
            }
            else{
                System.out.println("Login échoué");
                session.setAttribute("msg_err_login", "Login ou mot de passe incorrect");
            }

        }
        else {
            session.setAttribute("current_user",null);
            request.setAttribute("current_user",null);

            session.setAttribute("msg_err_login", "Login ou mot de passe incorrect");

            System.out.println("login échoué");
        }

        response.sendRedirect("user_servlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("user_servlet");
    }
}
