<%-- 
    Document   : login
    Created on : 22 mar. 2022, 13:19:12
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/signin.css">
    </head>
    <body style="background-color: #83a5c2">
        <jsp:include page="header.jsp"/>
        
        <main>
            <article>
            <h1>Login</h1>
            <section id="login">
                <input class="formluario" type="text" placeholder="Usuario" name="usuario">
                <input class="formluario" type="password" placeholder="Contraseña" name="contraseña">
                <input id="botonIniciarSesion" type="submit" value="Iniciar Sesión">
            </section>
            </article>
        </main>
    </body>
</html>
