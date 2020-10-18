<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    String id = request.getParameter("studentID");
    int no = Integer.parseInt(id);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","");
    Statement stat = conn.createStatement();
    stat.executeUpdate("delete from student where studentID='"+no+"'");
    response.sendRedirect("index.jsp");


%>