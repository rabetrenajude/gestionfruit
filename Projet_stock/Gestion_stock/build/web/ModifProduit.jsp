

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="isr.*"%>
	<jsp:useBean id="con" class="isr.ConnectionBase" />
	<jsp:useBean id="chauf" class="isr.Produit" />
        <jsp:useBean id="gc" class="isr.GestionProduit" />
        <%  
		try{
			
	String id = request.getParameter("id_produit");
        
	String description = request.getParameter("tfid_produit");
        String nombre_entrant = request.getParameter("tfnom_qte_produit");
      
        
	chauf = new Produit(id,description,nombre_entrant);
        
	gc.update(chauf);
        
        System.out.println("Modification reussie");
		}catch(Exception ex){
			out.println(ex);
		}
	%>  
        
         <SCRIPT Language="javascript">
		document.location = "FormProduit.jsp";
	</script>
    </body>
</html>
