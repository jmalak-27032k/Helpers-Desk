<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement,java.sql.Connection"%>
<%
 String FullName="jamila mal";
 String ID="jamjam123";
 

Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk","root","root");

PreparedStatement st= con.prepareStatement("insert into test values(?,?)");
st.setString(1,FullName);
st.setString(2,ID);

st.executeUpdate();
        
%>


