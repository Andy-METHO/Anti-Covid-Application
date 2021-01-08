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

public class NotificationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User current_user = (User) session.getAttribute("current_user");

        ConnexionBDD sc = new ConnexionBDD();

        String sql_readall = "UPDATE `Notifs` SET `is_read` = '1' WHERE `Notifs`.`receiver_id` ="+current_user.getId()+";";
        int read = sc.doUpdate(sql_readall);
        System.out.println(read);

        response.sendRedirect(request.getHeader("referer"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

                String sql_readall = "UPDATE `Notifs` SET `is_read` = '1' WHERE `Notifs`.`receiver_id` ="+current_user.getId()+";";
                int read = sc.doUpdate(sql_readall);
                System.out.println(read);

                try {
                    ArrayList<Notif> notifs = sc.getUserNotifications(current_user.getId());
                    session.setAttribute("notifs", notifs);
                    //session.setAttribute("unread", "");
                    System.out.println("fait");
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }

                request.getRequestDispatcher("/hub-profile-notifications.jsp").forward(request, response);
            }
        }
    }
}
