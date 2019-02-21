
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
        <jsp:useBean id="classeProduit" scope="session" class="isr.Produit"/>
        <jsp:useBean id="gestion" scope="session" class="isr.GestionProduit"/>  	
	  <%  
		try{
	
        String id = request.getParameter("id");
	String description = request.getParameter("tfid_produit");
        String nombre_entrant = request.getParameter("tfnom_qte_produit");
	classeProduit = new Produit(id,description,nombre_entrant);
	gestion.insert(classeProduit);
        out.println("Insertion reussie");
		}catch(Exception ex){
			out.println(ex);
		}
	%>
         <SCRIPT Language="javascript">
		document.location = "FormProduit.jsp";
	</script>
        
    </body>
</html>
