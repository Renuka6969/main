<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Names from Database</title>
</head>
<body>
    <h1>Names from Database</h1>
    <%
        // Database connection parameters
        String jdbcUrl = "jdbc:mysql://db:3306/exampledb";
        String jdbcUser = "root";
        String jdbcPassword = "password";
        
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);

            // Create a statement object
            stmt = conn.createStatement();

            // Execute the query
            String sql = "SELECT name FROM names";
            rs = stmt.executeQuery(sql);

            // Process the result set
            while (rs.next()) {
                String name = rs.getString("name");
                out.println("<p>" + name + "</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            // Close the resources
            if (rs != null) {
                try { rs.close(); } catch (SQLException ignore) {}
            }
            if (stmt != null) {
                try { stmt.close(); } catch (SQLException ignore) {}
            }
            if (conn != null) {
                try { conn.close(); } catch (SQLException ignore) {}
            }
        }
    %>
</body>
</html>
