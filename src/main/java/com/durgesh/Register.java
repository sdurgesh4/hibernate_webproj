package com.durgesh;

import org.hibernate.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        SessionFactory factory =  HibernateUtil.getFactory();
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();

        User s = new User(user, pass);
        session.save(s);
        tx.commit();

        session.close();
        //factory.close();
        request.setAttribute("message", "User registered successfully!");
        request.getRequestDispatcher("login.jsp").forward(request, response);

    }
}