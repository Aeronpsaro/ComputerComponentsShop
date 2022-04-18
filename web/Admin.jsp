<%-- 
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/catalogue.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/admin.css">
        
    </head>
    <body>
        <header>
            <ul id="encabezado">
                <li id="fotologo"><a href="Initializer"><img src="img\logo.jpeg" alt="menu" height="80px"></a></li>
                <li id="buscar"><form action="" method="post"><input id="texto" type="text" name="buscar" value="Buscar"></form></li>
                <nav id="buscador">
                    <li><a class="vinculo" href="Initializer" style="color: white"> Home</a></li>
                    <li><a class="vinculo" href="login.jsp" style="color: white"> Login</a></li>
                    <li id="carro"><a class="vinculo" href="Cart.jsp" style="color: white"><img src="img\carro.jpg" alt="menu" height="30px"></a></li>                    </nav>
            </ul>
        </header>
    </body>
    
    <main>
        <h1>Página del Administrador</h1>
        
        <ul id="menuAdmin">
            <li class="botonesAdmin"><button type="button">Inventario</button></li>
            <li class="botonesAdmin"><button type="button">Pedidos</button></li>
            <li class="botonesAdmin"><button type="button">Usuarios</button></li>
        </ul>

    </main>
</html>
