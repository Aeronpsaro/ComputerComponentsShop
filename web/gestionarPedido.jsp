<%-- 
    Document   : gestionarPedido
    Created on : 22 mar. 2022, 14:12:51
    Author     : alber
--%>

<%@page import="java.util.List"%>
<%@page import="model.Cart"%>
<%@page import="database.Connector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/gestionarPedido.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
            <%
                /*Connector connector = Connector.getConector();
                Connector.connect();
                int userID = 0;
                List<Cart>orders = connector.getOrders(userID);
                Connector.close();
                for (Cart cart:orders) {}*/%>
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