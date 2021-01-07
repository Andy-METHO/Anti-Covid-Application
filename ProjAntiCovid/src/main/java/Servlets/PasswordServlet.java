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

public class PasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String current_password = request.getParameter("current_password");
        String new_password = request.getParameter("new_password");
        String new_password_confirm = request.getParameter("new_password_confirm");

        HttpSession session = request.getSession();
        User current_user = (User) session.getAttribute("current_user");

        int id = current_user.getId();
        ConnexionBDD sc = new ConnexionBDD();

        if(!current_password.equals("") && !new_password.equals("") && !new_password_confirm.equals("")){

            if (current_password.equals(current_user.getPassword())){

                if(new_password.equals(new_password_confirm)){
                    String req = "UPDATE `User` SET `password` = '"+new_password+"' WHERE `User`.`id` = "+id;
                    System.out.println(req);
                    if(sc.doUpdate(req) !=0){
                        System.out.println("Changement effectués");
                        session.setAttribute("msg_success_password", "Les changements ont bien été effectués");
                        session.setAttribute("msg_err_password", "");
                    }
                    else{
                        session.setAttribute("msg_err_password", "Erreur : les données saisies sont incorrectes");
                        session.setAttribute("msg_success_password", "");
                        System.out.println("Changement échoués");
                    }
                }
                else{
                    session.setAttribute("msg_err_password", "Les mots de passe doivent être identiques");
                    session.setAttribute("msg_success_password", "");
                    System.out.println("Les mots de passe doivent être identiques");
                }
            }
            else{
                System.out.println("Mot de passe incorrect");
                session.setAttribute("msg_err_password","Mot de passe incorrect");
                session.setAttribute("msg_success_password", "");
            }
        }
        else{
            session.setAttribute("msg_err_password", "Les champs ne peuvent être vides");
            session.setAttribute("msg_success_password", "");
        }


        try {
            session.setAttribute("current_user", sc.getUser(current_user.getId()));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect(request.getContextPath()+"/password_change");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        session.getAttribute("msg_err_password");
        session.getAttribute("msg_success_password");

        User current_user = (User) session.getAttribute("current_user");
        if(current_user == null) {

            request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
        }
        else{
            request.getRequestDispatcher( "/hub-account-password.jsp" ).forward( request, response );
        }
    }
}
