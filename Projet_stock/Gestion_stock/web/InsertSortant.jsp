
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="isr.*"%>
    </head>
    <body>
        <jsp:useBean id="con" scope="session" class="isr.ConnectionBase"/>
        <jsp:useBean id="classeProduit" scope="session" class="isr.Sortant"/>
        <jsp:useBean id="gestion" scope="session" class="isr.GestionSortant"/>  	
	  <%  
		try{
	
        String id = request.getParameter("id");
	String designation = request.getParameter("tfid_sortant");
        String quantite_sortant = request.getParameter("tfnomsortant");
	classeProduit = new Sortant(id,designation,quantite_sortant);
	gestion.insert(classeProduit);
        out.println("Insertion reussie");
		}catch(Exception ex){
			out.println(ex);
		}
	%>
         <SCRIPT Language="javascript">
		document.location = "FormSortant.jsp";
	</script>
        
    </body>
</html>
