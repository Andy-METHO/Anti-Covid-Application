package Servlets;

import Beans.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        HttpSession session = request.getSession();

        User current_user = (User) session.getAttribute("current_user");

        if(current_user == null) {

            request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
        }
        else{
            if(current_user.getRole().trim().equals("USER")) {
                request.getRequestDispatcher( "/events.jsp" ).forward( request, response );
            }
            else {
                if(current_user.getRole().trim().equals("ADMIN")) {
                    request.getRequestDispatcher( "/admin.jsp" ).forward( request, response );
                }
            }
        }

    }
}
