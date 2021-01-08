package Servlets;

import Beans.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BDD.ConnexionBDD;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@SuppressWarnings("serial")
public class PositifServlet extends HttpServlet {

    private Friends friendslist;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ConnexionBDD sc = new ConnexionBDD();
        HttpSession session = request.getSession();

        System.out.println("Requête positif");

        User current_user = (User) session.getAttribute("current_user");

        int positif = Integer.parseInt(request.getParameter("positivite"));
        System.out.println("positif : " + positif);

		ResultSet results;
		String friends_sql = "SELECT id,pseudo FROM ami,User WHERE ( user1=" + current_user.getId() + " OR user2=" + current_user.getId() + " ) AND valide=1 AND ( user1=id OR user2=id );";
		ArrayList<User> friends = new ArrayList<User>();
		try {
			results = sc.doRequest(friends_sql);
			while (results.next()) {
				if (!sc.getUser(results.getString(2)).getPseudo().equals(current_user.getPseudo())) {
					friends.add(sc.getUser(results.getString(2)));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

        if (positif == 1) {
        	if(current_user.getStatut() != true){
				String sql_changeState = "UPDATE `User` SET `statut` = b'1' WHERE `User`.`id` =" + current_user.getId();
				System.out.println(sql_changeState);
				if (sc.doUpdate(sql_changeState) != 0) {
					System.out.println("User positif");
                    try {
                        current_user = sc.getUser(current_user.getId());
                        session.setAttribute("current_user", current_user);
                    } catch (SQLException throwables) {
                        throwables.printStackTrace();
                    }
					for ( User f : friends) {
						sc.createNotif( f.getId(), current_user.getId(), "Est positif au corona virus");
					}
				}
			}
        }
        else{
			String sql_changeState = "UPDATE `User` SET `statut` = b'0' WHERE `User`.`id` =" + current_user.getId();
			System.out.println(sql_changeState);
			if (sc.doUpdate(sql_changeState) != 0) {
                try {
                    current_user = sc.getUser(current_user.getId());
                    session.setAttribute("current_user", current_user);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
				System.out.println("User non positif");
		}
		response.sendRedirect(request.getContextPath()+"/accueil");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        HttpSession session = request.getSession();

        User current_user = (User) session.getAttribute("current_user");
        if (current_user == null) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        else{

            ConnexionBDD sc = new ConnexionBDD();

            try {
                ArrayList<Notif> notifs = sc.getUserNotifications(current_user.getId());
                ArrayList<Notif> unreadNotifs = sc.getUnreadNotifications(current_user.getId());
                session.setAttribute("notifs", notifs);
                session.setAttribute("unread", unreadNotifs);
                System.out.println("fait");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

            request.getRequestDispatcher("/positif.jsp").forward(request, response);
        }
    }
}
