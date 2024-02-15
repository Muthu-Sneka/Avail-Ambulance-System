package servlet;

import java.io.*;

import java.sql.*;

import javax.servlet.*;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.*;



@WebServlet("/Signup")

public class Signup extends HttpServlet implements Serializable {

    private static final long serialVersionUID = 1L; // SerialVersionUID


    protected void doPost(HttpServletRequest request,HttpServletResponse response)

            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String firstName = request.getParameter("fname");

        String lastName = request.getParameter("lname");

        String address = request.getParameter("address");

        String gender = request.getParameter("gender");

        String email = request.getParameter("email");

        String mobile = request.getParameter("mobile");

        System.out.println(firstName);

        System.out.println(lastName);

        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/avail","root","12345");



            String insertQuery = "INSERT INTO users (first_name,last_name, address, gender, email, mobile) VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement preparedStatement =conn.prepareStatement(insertQuery);

            preparedStatement.setString(1, firstName);

            preparedStatement.setString(2, lastName);

            preparedStatement.setString(3, address);

            preparedStatement.setString(4, gender);

            preparedStatement.setString(5, email);

            preparedStatement.setString(6, mobile);

            preparedStatement.executeUpdate();

            preparedStatement.close();

            conn.close();



            // Redirect to the success page

            response.sendRedirect("success.html");

        } catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println("Registration failed.");

            // Handle the exception and redirect to an error page if needed

        }

    }

}