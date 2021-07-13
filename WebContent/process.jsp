<body>
<%@ page import = "java.sql.*"  %>
<%@ page import = "javax.sql.*" %>

<%
String firstName = request.getParameter("fname");
String lastName = request.getParameter("lname");
String gender = request.getParameter("gender");
String address = request.getParameter("address");
String phoneNumber = request.getParameter("phonenumber");
String course = request.getParameter("course");


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abclearning","root","root");

Statement st = con.createStatement();
ResultSet rs;

int i = st.executeUpdate("insert into users values ('" +firstName+ "','"+ lastName+ "','"+gender+"','"+address+"','"+phoneNumber+"','"+course+"')");
//out.println(firstName+" "+lastName+" "+"are successfully Registered for the course "+course);
		out.println("You are successfully registered");
%>


<h1>Thank you</h1>