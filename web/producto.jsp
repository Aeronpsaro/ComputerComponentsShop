<%-- 
    Document   : producto
    Created on : 22 mar. 2022, 14:12:21
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <link rel="stylesheet" href="css/catalogue.css">
        <link rel="stylesheet" href="css/producto.css">

    </head>
    <body>
        <header>
            <ul id="encabezado">
                <li id="fotologo"><a href="Initializer"><img src="img\logo.jpeg" alt="menu" height="80px"></a></li>
                <li id="buscar"><form action="" method="post"><input id="texto" type="text" name="buscar" value="Buscar"></form></li>
                <nav id="buscador">
                    <li><a class="vinculo" href="Initializer" style="color: white"> Home</a></li>
                    <li><a class="vinculo" href="login.jsp" style="color: white"> Login</a></li>
                    <li id="carro"><a class="vinculo" href="Cart.jsp" style="color: white"><img src="img\carro.jpg" alt="menu" height="30px"></a></li>                </nav>
            </ul>
        </header>
        
        <main>
        <article>
            <section id="caja1">
                <img id="imagenProducto" src="" alt="" height="300px" width="300px">
                <div id="infoproducto">
                    <p>Marca</p>
                    <p>0.00€</p>
                </div>
                
            </section>

            <section id="caja2">
                <h2>Nombre Producto</h2>
                <p>Descripción del producto</p>
                <div id="botonAñadirCarrito">
                    <button>Añadir al carrito</button>
                </div>
            </section>
        </article>
        </main>
    </body>
</html>

