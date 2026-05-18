package com.durgesh;

import org.hibernate.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        SessionFactory factory =  HibernateUtil.getFactory();
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();

        Query<User> query = session.createQuery(
                "from User where username = :username and password = :password",
                User.class  );

        query.setParameter("username", user);
        query.setParameter("password", pass);

        User u = query.uniqueResult();

        session.close();

        if (u != null) {
            request.setAttribute("user", user);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Invalid Username or Password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        //factory.close();
    }
}
