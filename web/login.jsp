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
        <title>Inicia sesión</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/login.css">
        <%if (request.getAttribute("loginError") != null) {%>
            <script>
                this.window.alert("Usuario o contraseña incorrectos");
            </script>
        <%}%>
    </head>
    <body style="background-color: #83a5c2">
        <jsp:include page="header.jsp"/>
        
        <main>
            <article>
            <h1>Inicia sesión</h1>
            <section id="login">
                <form action="FrontServlet" method="POST">
                    <input type="hidden" name="command" value="SignInCommand">
                    <input class="formulario" type="text" placeholder="Usuario" name="usuario">
                    <input class="formulario" type="password" placeholder="Contraseña" name="contrasenna">
                    <span> ¿Aún no tienes cuenta? <a style="color: greenyellow" href="./SignUp.jsp"> ¡Regístrate! </a></span>
                    <input id="botonIniciarSesion" type="submit" value="Iniciar Sesión">
                </form>
            </section>
            </article>
        </main>
    </body>
</html>
