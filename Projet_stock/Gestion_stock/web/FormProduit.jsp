<%-- 
    Document   : FormClient
    Created on : 14 août 2014, 20:27:17
    Author     : RAKOTOSEHENO
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajout d'un produit</title>
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
         <h3 class="ui-widget-header ui-corner-all">SAISIE PRODUITS </h3>
        <p>&nbsp;</p>
        <form id="form1" name="form1" method="post" action="InsertProduit.jsp">
  <p>&nbsp;</p>
  <table width="1020" border="0">
            <tr>
              <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
              <td height="109">&nbsp;</td>
              <td><div align="left">
               
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
                    <input name="id" id="id" type="hidden" value="0">
                    </label></td>
                  </tr>
                    
                  <tr>
                    <td width="137">Type de produit
                    <td colspan="2"><label>
                            
                <select name="tfid_produit" id="tfid_produit" placeholder="type de produit"><option>ORANGE</option>
                       <option>MANGUE</option>
                       </select>
                    </label></td>
                  </tr>
                  <tr>
                    <td>Quantit&eacute; entrant</td>
                    <td colspan="2"><label>
                      <input name="tfnom_qte_produit" type="text" id="tfnom_qte_produit">
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
  

                      
   <form id="form1" name="form2" method="post" action="">
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
        out.println(" Nombre de MANGUE " +Countrun);
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
        Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/ges_stock","root",""); 
        Statement st3=con3.createStatement();
        String strQuery = "SELECT (SUM(nombre_entrant)-(quantite_sortant)) AS total_points FROM fruit a JOIN fruit_sortant b ON a.description = b.designation WHERE a.description = 'ORANGE' AND b.designation = 'ORANGE'";
        ResultSet rs3 = st3.executeQuery(strQuery);
        String Countrun="";
        while(rs3.next()){
        Countrun = rs3.getString(1);
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
        Connection con9=DriverManager.getConnection("jdbc:mysql://localhost:3306/ges_stock","root",""); 
        Statement st9=con9.createStatement();
        String strQuery = "SELECT (SUM(nombre_entrant)-(quantite_sortant)) AS total_points FROM fruit a JOIN fruit_sortant b ON a.description = b.designation WHERE a.description = 'MANGUE' AND b.designation = 'MANGUE'";
        ResultSet rs9 = st9.executeQuery(strQuery);
        String Countrun="";
        while(rs9.next()){
        Countrun = rs9.getString(1);
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
