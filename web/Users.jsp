<%-- 
    Document   : Users
    Created on : 21 abr. 2022, 12:41:23
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <link rel="stylesheet" href="css/catalogue.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/users.css">
        <link rel="stylesheet" href="css/flechaboton.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <main>
            <h1>Usuarios</h1>
            
            <section id="titulos">
                <h2>Nombre</h2>
                <h2>Correo</h2>
            </section>
            <div id="flechayboton">
                <a href="#" class="volver" onclick="window.location.href='Admin.jsp'" >
                    <div>
                        <span></span>
                    </div>
                </a>
            
                <button id="añadirusuario" onclick="window.location.href='addUser.jsp'" type="button">Añadir usuario</button>
        </main>
    </body>
</html>
