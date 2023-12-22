package org.example;

import lombok.SneakyThrows;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/signIn")
public class SignInServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/patient_signin.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    @SneakyThrows
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        HttpSession httpSession = req.getSession();
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        PasswordUtil passwordUtil = new PasswordUtil();
        String passwordMD5 = passwordUtil.encrypt(password);
//        log(login);
//        log(password);
        req.setAttribute("login", login);
        Connection connection = ConnectionContainer.getConnection();
        PreparedStatement preparedStatement =
                connection.prepareStatement("SELECT * FROM patients WHERE email = ?");
        preparedStatement.setString(1,login);
        ResultSet resultSet = preparedStatement.executeQuery();
        resultSet.next();
        if (resultSet.getString("password").equals(passwordMD5)){
            Patient patient = new Patient().builder().id(resultSet.getString("id")).name(resultSet.getString("name")).surname(resultSet.getString("surname")).birthDate(resultSet.getDate("birth_date")).password(resultSet.getString("password")).email(resultSet.getString("email")).telephone(resultSet.getString("telephone")).build();
            req.setAttribute("user",patient);
//            log(String.valueOf(patient));
//            log(String.valueOf(req.getAttribute("user")));
            req.getRequestDispatcher("/account.jsp").forward(req,resp);

        } else {
            resp.sendRedirect("http://localhost:8080/Hospital1/signIn");
        }
    }
}
