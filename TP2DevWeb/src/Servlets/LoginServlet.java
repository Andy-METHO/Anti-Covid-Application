package Servlets;

import BDD.ConnexionBDD;
import Beans.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();
        ConnexionBDD sc = new ConnexionBDD();

        if(!login.equals("") && !password.equals("")) {

            User current_user = sc.getUser(login,password);

            session.setAttribute("current_user",current_user);
            request.setAttribute("current_user",current_user);

        }
        else {
            session.setAttribute("current_user",null);
            request.setAttribute("current_user",null);
        }

        response.sendRedirect("user_servlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("user_servlet");
    }
}
