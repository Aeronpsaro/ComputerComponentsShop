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
        <jsp:include page="header.jsp"/>
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

