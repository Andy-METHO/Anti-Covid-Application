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
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class AccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String login = request.getParameter("login");
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
        User current_user = (User) session.getAttribute("current_user");
        int id = current_user.getId();
        ConnexionBDD sc = new ConnexionBDD();

        if(!login.equals("") && !nom.equals("") && !prenom.equals("") && !birthdate.equals("")){
            String req = "UPDATE `User` SET `login` = '"+login+"', `nom` = '"+nom+"', `prenom` = '"+prenom+"', `birthdate` = '"+birthdate+"' WHERE `User`.`id` = "+id;
            System.out.println(req);
            if(sc.doUpdate(req) !=0){
                System.out.println("Changement effectués");
                session.setAttribute("msg_success_account", "Les changements ont bien été effectués");
                session.setAttribute("msg_err_account", "");
            }
            else{
                session.setAttribute("msg_err_account", "Erreur : les données saisies sont incorrectes");
                session.setAttribute("msg_success_account", "");
                System.out.println("Changement échoués");
            }
        }
        else{
            session.setAttribute("msg_err_account", "Les champs ne peuvent être vides");
            session.setAttribute("msg_success_account", "");
        }


        try {
            session.setAttribute("current_user", sc.getUser(current_user.getId()));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect(request.getContextPath()+"/account");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        session.getAttribute("msg_err_account");
        session.getAttribute("msg_success_account");

        User current_user = (User) session.getAttribute("current_user");
        if(current_user == null) {

            request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
        }
        else{
            request.getRequestDispatcher( "/hub-account-info.jsp" ).forward( request, response );
        }
    }
}
