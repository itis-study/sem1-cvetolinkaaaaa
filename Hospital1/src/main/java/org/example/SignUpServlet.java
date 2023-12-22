package org.example;

import lombok.SneakyThrows;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
@WebServlet("/signUp")
public class SignUpServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/patient_signup.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    @SneakyThrows
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String date = req.getParameter("date");
        String email = req.getParameter("email");
        String telephone = req.getParameter("telephone");
        String password = req.getParameter("password");
        PasswordUtil passwordUtil = new PasswordUtil();
        String passwordMD5 = passwordUtil.encrypt(password);
//        resp.setContentType("text/html");
//        PrintWriter out = resp.getWriter();
//        out.println("<h3>" + date + "</h3>");
//        out.close();
        Connection connection = ConnectionContainer.getConnection();
        PreparedStatement preparedStatement =
                connection.prepareStatement("INSERT INTO patients(name,surname,birth_date, email, telephone,password) " +
                        "VALUES (?,?,?,?,?,?)");
        preparedStatement.setString(1,name);
        preparedStatement.setString(2,surname);
        preparedStatement.setDate(3, new java.sql.Date((new SimpleDateFormat( "yyyy-MM-dd" ).parse( date )).getTime()));
        preparedStatement.setString(4,email);
        preparedStatement.setString(5,telephone);
        preparedStatement.setString(6,passwordMD5);
        preparedStatement.executeUpdate();
        connection.close();
        resp.sendRedirect("http://localhost:8080/Hospital1/index.jsp");
    }
}
