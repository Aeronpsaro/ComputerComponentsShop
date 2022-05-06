><%-- 
    Document   : admin
    Created on : 18 abr. 2022, 10:58:30
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <jsp:include page="icon.jsp"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/admin.css">
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
    </body>
    
    <main>
        <h1>Página del Administrador</h1>
        
        <ul id="menuAdmin">
            <li class="botonesAdmin"><button type="button" onclick="window.location.href='Stock.jsp'">Inventario</button></li>
            <li class="botonesAdmin"><button type="button" onclick="window.location.href='Orders.jsp'">Pedidos</button></li>
            <li class="botonesAdmin"><button type="button" onclick="window.location.href='Users.jsp'">Usuarios</button></li>
        </ul>

    </main>
</html>
