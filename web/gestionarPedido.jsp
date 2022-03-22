<%-- 
    Document   : gestionarPedido
    Created on : 22 mar. 2022, 14:12:51
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/gestionarPedido.css">
    </head>
    <body>
        <header>
            <ul id="encabezado">
                <li id="fotologo"><a href="index.html"><img src="img\logo.jpeg" alt="menu" height="80px"></a></li>
                <li id="buscar"><form action="" method="post"><input id="texto" type="text" name="buscar" value="Buscar"></form></li>
                <nav id="buscador">
                    <li><a class="vinculo" href="index.html" style="color: white"> Home</a></li>
                    <li><a class="vinculo" href="login.html" style="color: white"> Login</a></li>
                    <li id="carro"><a class="vinculo" href="carrito.html" style="color: white"><img src="img\carro.jpg" alt="menu" height="30px"></a></li>                </nav>
            </ul>
        </header>
        
        <main>
            <ul>
                <h1>ID del Pedido</h1>
            <article>
                <section class="datosproducto">
                    <img src="" alt="" height="100px" width="100px">
                    <div class="nombreProducto">
                        <h2>Nombre producto</h2>
                    </div>
                    
                </section>
                <section class="informacionadicional">
                    <p>0.00€</p>
                    <p>0-5</p>
                </section>
            </article>

            <article>
                <section class="datosproducto">
                    <img src="" alt="" height="100px" width="100px">
                    <div class="nombreProducto">
                        <h2>Nombre producto</h2>
                    </div>
                    
                </section>
                <section class="informacionadicional">
                    <p>0.00€</p>
                    <p>0-5</p>
                </section>
            </article>

            <article>
                <section class="datosproducto">
                    <img src="" alt="" height="100px" width="100px">
                    <div class="nombreProducto">
                        <h2>Nombre producto</h2>
                    </div>
                    
                </section>
                <section class="informacionadicional">
                    <p>0.00€</p>
                    <p>0-5</p>
                </section>
            </article>

            <article>
                <section class="datosproducto">
                    <img src="" alt="" height="100px" width="100px">
                    <div class="nombreProducto">
                        <h2>Nombre producto</h2>
                    </div>
                    
                </section>
                <section class="informacionadicional">
                    <p>0.00€</p>
                    <p>0-5</p>
                </section>
            </article>

            <div id="cancelarPedido">
                <button>Cancelar Pedido</button>
            </div>
            

            </ul>

            
        </main>
    </body>
</html>