<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
            <h1>¡Su petición ha sido procesada con éxito! Ha comprado por un valor de <%=request.getSession().getAttribute("price")%></h1>
        </main>
    </body>
</html>
