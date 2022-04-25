<%-- 
    Document   : login
    Created on : 22 mar. 2022, 13:19:12
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/signin.css">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
            <h1>Login</h1>
            <section id="login">
                <input class="formluario" type="text" placeholder="Usuario" name="usuario">
                <input class="formluario" type="password" placeholder="Contraseña" name="contraseña">
                <input id="botonIniciarSesion" type="submit" value="Iniciar Sesión">
            </section>
        </main>
    </body>
</html>
