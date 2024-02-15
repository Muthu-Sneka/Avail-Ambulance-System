<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>rEG</title>
    <style>
      body {
            font-family: Arial, sans-serif;
            background-image: url('shre.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Add a
transparent white background to the table */
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>HOSPITALS</h1>

    <!-- Add the search bar -->
    <form method="get">
        <label for="search">Search:</label>
        <input type="text" id="search" name="search">

        <!-- Add select boxes for columns -->
        <label for="column">Search in:</label>
        <select id="column" name="column">
            <option value="hospitalname">Hospital Name</option>
            <option value="places">Places</option>
            <option value="location">Location</option>
            <option value="phonenumber">Phone Number</option>
        </select>

        <input type="submit" value="Search">
    </form>

    <table>
        <tr>
            <th>hospitalname</th>
            <th>places</th>
            <th>location</th>
            <th>phone number</th>
        </tr>
        <% // Database connection parameters
            String url = "jdbc:mysql://localhost:3307/lap";
            String username = "root";
            String password = "12345";

            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");

                // Create a connection to the database
                Connection connection =
DriverManager.getConnection(url, username, password);

                // Create a SQL statement
                String sql = "SELECT hospitalname, places, location,phonenumber FROM hosp";
                Statement statement = connection.createStatement();

                String searchQuery = request.getParameter("search");
                if (searchQuery != null && !searchQuery.isEmpty()) {
                    // Modify the SQL query for searching
                    sql = "SELECT hospitalname, places, location,phonenumber FROM hosp " +"WHERE hospitalname LIKE ? OR places LIKE ?OR location LIKE ?";
                    PreparedStatement preparedStatement =
connection.prepareStatement(sql);
                    preparedStatement.setString(1, "%" + searchQuery + "%");
                    preparedStatement.setString(2, "%" + searchQuery + "%");
                    preparedStatement.setString(3, "%" + searchQuery + "%");
                    ResultSet resultSet = preparedStatement.executeQuery();

                    while (resultSet.next()) {
        %>
        <tr>
            <td><%= resultSet.getString("hospitalname") %></td>
            <td><%= resultSet.getString("places") %></td>
            <td><%= resultSet.getString("location") %></td>
            <td><%= resultSet.getInt("phonenumber") %></td>
        </tr>
        <%
                    }

                    resultSet.close();
                    preparedStatement.close();
                } else {
                    ResultSet resultSet = statement.executeQuery(sql);

                    while (resultSet.next()) {
        %>
        <tr>
            <td><%= resultSet.getString("hospitalname") %></td>
            <td><%= resultSet.getString("places") %></td>
            <td><%= resultSet.getString("location") %></td>
            <td><%= resultSet.getInt("phonenumber") %></td>
             <td>
            <form method="post" action="NewFile1.jsp"> <!--Change action to your processing page -->
                <input type="hidden" name="selectedHospitalName"value="<%= resultSet.getString("hospitalname") %>">
                <input type="submit" value="Select">
            </form>
        </td>
        </tr>

        <%
                    }

                    resultSet.close();
                }

                statement.close();
                connection.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>