


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajout d'un client</title>
        <link rel="stylesheet" href="jquery1/themes/base/jquery.ui.all.css">
	<script src="jquery1/jquery-1.6.2.js"></script>
	<script src="jquery1/ui/jquery.ui.core.js"></script>
	<script src="jquery1/ui/jquery.ui.widget.js"></script>
    <script src="jquery1/jq/ui/jquery.effects.core.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.blind.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.bounce.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.clip.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.drop.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.explode.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.fade.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.fold.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.highlight.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.pulsate.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.scale.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.shake.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.slide.js"></script>
	<script src="jquery1/jq/ui/jquery.effects.transfer.js"></script>
	<script src="jquery1/ui/jquery.ui.datepicker.js"></script>
	<script src="jquery1/ui/jquery.ui.datepicker.js"></script>
	
    <link rel="stylesheet" href="style.css" />
        <style> 
		.toggler { width: 600px; height: 400px; }
		#button { padding: .5em 1em; text-decoration: none; }
		#effect { width: 500px; height: 500px; padding: 0.4em; position: relative; }
		#effect h3 { margin: 0; padding: 0.4em; text-align: center; }
		.ui-effects-transfer { border: 2px dotted gray; } 
	</style>

    </head>
    <body bgcolor="orange">
    
    <div align="center">
        <div class="demo">
 
         <div class="toggler">
         <div align="center"></div>
         <div id="effect" class="ui-widget-content ui-corner-all">
         <h3 class="ui-widget-header ui-corner-all">SAISIE DE PRODUIT SORTANT</h3>
        <p>&nbsp;</p>
        <form id="form1" name="form1" method="post" action="InsertSortant.jsp">
  <p>&nbsp;</p>
  <table width="1020" border="0">
            <tr>
              <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
              <td height="109">&nbsp;</td>
              <td><div align="left">
                <table width="422" border="0" class="selected">
                    
                      <tr>
                    <td width="137">
                    <td colspan="2"><label>
                    <input name="id" id="id" placeholder="Nom de produit" type="hidden" value="0">
                    </label></td>
                  </tr>
                    
                  <tr>
                    <td width="137">Designation
                    <td colspan="2"><label>
                            
                <select name="tfid_sortant" id="tfid_sortant" placeholder="type de produit"><option>ORANGE</option>
                       <option>MANGUE</option>
                       </select>
                    </label></td>
                  </tr>
                  <tr>
                    <td>Quantit&eacute; sortant</td>
                    <td colspan="2"><label>
                      <input name="tfnomsortant" type="text" id="tfnomsortant">
                    </label></td>
                  </tr>
                 		    
                  
                  <tr>
                    <td><div align="center">
                      <input type="submit" name="Submit" value="Ajout">
                    </div></td>
                    <td width="149"><p align="center">
                      <input name="Reset" type="submit" id="Reset" value="Annuler">
                    </p></td>
                  </tr>
                </table>
                <p>&nbsp;</p>
            </div>                
            <p align="left">&nbsp;</p></td>
             <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="31">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
         </table>
    <form id="form9" name="form9" method="post" action="">
	<%@page import="isr.*"%>
	<jsp:useBean id="con" scope="session" class="isr.ConnectionBase"/>
	
		<table width="613" border="1" align="center">
          <tr>
           
            <td width="58"><div align="center"><strong>Nom de produit</strong></div></td>
            <td width="97"><div align="center"><strong>Quantit&eacute; sortant</strong></div></td>
           
          </tr>
	
		<%	
                int i = 0;
		try{
		java.sql.ResultSet res =con.executeQuery("SELECT * FROM fruit_sortant order by id asc");	    
		while(res.next()){	
		 %>	
		<tr>
                       
                       
			<td><% out.println(res.getString("designation")); %>
			<td><% out.println(res.getInt("quantite_sortant")); %>
			
                         
          </tr>
		 <% i++;}
		 	}catch(java.sql.SQLException a){
		 	out.println(a);
		  }
	     %>	
                </tr> 
                  
             
	  </table>
             
        </p> &nbsp; </p>            
       </p> &nbsp; </p>  
        </p> &nbsp; </p>
 

<table border="1" width="100%">
    <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/ges_stock","root",""); 
        Statement st1=con1.createStatement();
        String strQuery = "SELECT SUM(quantite_sortant) FROM fruit_sortant WHERE designation='ORANGE' GROUP BY designation";
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
        String strQuery = "SELECT SUM(quantite_sortant) FROM fruit_sortant WHERE designation='MANGUE' GROUP BY designation";
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

      
<table border="1" width="100%">
    <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con7=DriverManager.getConnection("jdbc:mysql://localhost:3306/ges_stock","root",""); 
        Statement st7=con7.createStatement();
        String strQuery = "SELECT (SUM(nombre_entrant)-(quantite_sortant)) AS total_points FROM fruit a JOIN fruit_sortant b ON a.description = b.designation WHERE a.description = 'ORANGE' AND b.designation = 'ORANGE'";
        ResultSet rs7 = st7.executeQuery(strQuery);
        String Countrun="";
        while(rs7.next()){
        Countrun = rs7.getString(1);
        out.println("stock  D'ORANGE " +Countrun);
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
        Connection con8=DriverManager.getConnection("jdbc:mysql://localhost:3306/ges_stock","root",""); 
        Statement st8=con8.createStatement();
        String strQuery = "SELECT (SUM(nombre_entrant)-(quantite_sortant)) AS total_points FROM fruit a JOIN fruit_sortant b ON a.description = b.designation WHERE a.description = 'MANGUE' AND b.designation = 'MANGUE'";
        ResultSet rs8 = st8.executeQuery(strQuery);
        String Countrun="";
        while(rs8.next()){
        Countrun = rs8.getString(1);
        out.println("stock  DE MANGUE " +Countrun);
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
		</div>
	</body>
</html>
