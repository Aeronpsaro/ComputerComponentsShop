<%-- 
    Document   : Orders
    Created on : 22 abr. 2022, 10:48:29
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedidos</title>
        <link rel="stylesheet" href="css/orders.css">
        <link rel="stylesheet" href="css/flechaboton.css">

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
            <section id="infopedido">
                <h1>"ID del pedido"</h1>
                <h1>"Precio Total"</h1>
            </section>
        
        
        <section id="titulos">
                <h2>ID producto</h2>
                <h2>Nombre producto</h2>
                <h2>Precio</h2>
                <h2>Cantidad</h2>
            </section>
        
            <div id="flechayboton">
                <a href="#" class="volver" onclick="window.location.href='Orders.jsp'" >
                    <div>
                        <span></span>
                    </div>
                </a>
            
                <button id="aprobarpedido" onclick="window.location.href='approveOrder.jsp'" type="button">Aprobar pedido</button>
        </main>
    </body>
</html>
