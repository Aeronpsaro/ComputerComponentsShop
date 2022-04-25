<%-- 
    Document   : addUser
    Created on : 21 abr. 2022, 12:51:42
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir usuario</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/adduser.css">
        <link rel="stylesheet" href="css/flechaboton.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <main>
            <h1>Añadir Usuario</h1>
            
            <article id="todoformulario">
                    <section>
                        <ul class="relleno">
                            <li class ="formulariotitulos" >Nombre y apellidos</li>
                            <li class ="formulariotitulos">Usuario</li>
                            <li class ="formulariotitulos">Contraseña</li>
                            <li class ="formulariotitulos">Repetir contraseña</li>
                            <li class ="formulariotitulos">Correo</li>
                            <li class ="formulariotitulos">Teléfono (opcional)</li>
                        </ul>
                    </section>
                
                <section>
                        <form id="formulario" action="" method="post">
                            <ul class="relleno">
                                <input class="formulario" id="nombreUsuario" type="text" placeholder="Nombre completo" name="nombreusuario" required>
                                <input class="formulario" id="usuario" type="text" placeholder="Usuario" name="usuario" required>
                                <input class="formulario" id="" type="password" placeholder="Contraseña" name="contraseña" required>
                                <input class ="formulario" type="password" placeholder="Repetir contraseña" name="repContraseña" required>
                                <input class="formulario" id="correo" type="mail" placeholder="Correo electrónico" name="correo" required>
                                <input class="formulario" id="telefono" type="text" placeholder="Teléfono" name="telefono" >
                            </ul>
                            <button id="botonAñadir"> Añadir usuario</button>
                        </form>
                    </section>
            </article>
            
            <div id="flechayboton">
                <a href="#" class="volver" onclick="window.location.href='Users.jsp'" >
                    <div>
                        <span></span>
                    </div>
                </a>
    </body>
</html>
