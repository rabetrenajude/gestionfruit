<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ges_stock";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Liste des clients</title>  
</head>

<body>
    <form id="form1" name="form1" method="post" action="">
	<%@page import="isr.*"%>
	<jsp:useBean id="con" scope="session" class="isr.ConnectionBase"/>
	
		<table width="613" border="1" align="center">
          <tr>
           
            <td width="58"><div align="center"><strong>Nom de produit</strong></div></td>
            <td width="97"><div align="center"><strong>Quantit&eacute; entrant</strong></div></td>
           
          </tr>
	
		<%	
                int i = 0;
		try{
		java.sql.ResultSet res =con.executeQuery("SELECT * FROM fruit order by id asc");	    
		while(res.next()){	
		 %>	
		<tr>
                       
                       
			<td><% out.println(res.getString("description")); %>
			<td><% out.println(res.getInt("nombre_entrant")); %>
			
                         
          </tr>
		 <% i++;}
		 	}catch(java.sql.SQLException a){
		 	out.println(a);
		  }
	     %>	
                </tr> 
                  
             
	  </table>
             
           
                
                
                
                
                
            

<table border="1" width="100%">
    <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/ges_stock","root",""); 
        Statement st1=con1.createStatement();
        String strQuery = "SELECT SUM(nombre_entrant) FROM fruit WHERE description='ORANGE' GROUP BY description";
        ResultSet rs = st1.executeQuery(strQuery);
        String Countrun="";
        while(rs.next()){
        Countrun = rs.getString(1);
        out.println("Nombre d'ORANGE " +Countrun);
        }
        }
        catch (Exception e){
        e.printStackTrace();
        }
    %>
</table>



<table border="1" width="100%">
    <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/ges_stock","root",""); 
        Statement st2=con2.createStatement();
        String strQuery = "SELECT SUM(nombre_entrant) FROM fruit WHERE description='MANGUE' GROUP BY description";
        ResultSet rs1 = st2.executeQuery(strQuery);
        String Countrun="";
        while(rs1.next()){
        Countrun = rs1.getString(1);
        out.println("Nombre de MANGUE " +Countrun);
        }
        }
        catch (Exception e){
        e.printStackTrace();
        }
    %>
</table>

                
                <p>&nbsp;</p>
 <center>
 </center>
  <p>&nbsp;</p>
    </center>
    </form>
</body>
</html>
