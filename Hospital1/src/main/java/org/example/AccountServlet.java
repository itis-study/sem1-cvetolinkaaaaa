package org.example;

import lombok.SneakyThrows;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

@WebServlet("/account")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/account.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    @SneakyThrows
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String date = req.getParameter("date");
        String email = req.getParameter("email");
        String telephone = req.getParameter("telephone");
        Connection connection = ConnectionContainer.getConnection();
        PreparedStatement preparedStatement =
                connection.prepareStatement("UPDATE patients SET name = ?, surname = ? ,birth_date = ?, email = ?, telephone = ? WHERE email = ?");
        preparedStatement.setString(1,name);
        preparedStatement.setString(2,surname);
        preparedStatement.setDate(3, new java.sql.Date((new SimpleDateFormat( "yyyy-MM-dd" ).parse( date )).getTime()));
        preparedStatement.setString(4,email);
        preparedStatement.setString(5,telephone);
        preparedStatement.setString(6,login);
    }
}
