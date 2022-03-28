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
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <header>
            <ul id="encabezado">
                <li id="fotologo"><a href="index.jsp"><img src="img\logo.jpeg" alt="menu" height="80px"></a></li>
                <li id="buscar"><form action="" method="post"><input id="texto" type="text" name="buscar" value="Buscar"></form></li>
                <nav id="buscador">
                    <li><a class="vinculo" href="index.jsp" style="color: white"> Home</a></li>
                    <li><a class="vinculo" href="login.jsp" style="color: white"> Login</a></li>
                    <li id="carro"><a class="vinculo" href="carrito.jsp" style="color: white"><img src="img\carro.jpg" alt="menu" height="30px"></a></li>                </nav>
            </ul>
        </header>
        
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
