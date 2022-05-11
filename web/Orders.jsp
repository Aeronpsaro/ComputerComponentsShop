<%-- 
    Document   : Orders
    Created on : 22 abr. 2022, 10:48:29
    Author     : alber
--%>

<%@page import="model.Product"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Order"%>
<%@page import="java.util.List"%>
<%@page import="database.Connector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedidos</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/orders.css">
        <link rel="stylesheet" href="css/flechaboton.css">

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
           
            <h1>Pedidos</h1>
            
            <%
                Connector connector = Connector.getConector();
                Connector.connect();
                //int userID = (Integer)request.getSession().getAttribute("uid");
                List<Order>orders = connector.getOrders();
                for (Order order:orders) {%>
            <ul>
                <h1>Pedido <%=order.getId()%> | Usuario <%=order.getUser_id()%></h1>
                <div id="orderControls" style="float:right">
                    <form action="FrontServlet" method="POST" onclick="submit()">
                        <input type="hidden" name="command" value="AdminRemoveOrderCommand">
                        <input type="hidden" name="order" value="<%=order.getId()%>">
                        <div><img class="deleteProduct" src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="70px">Eliminar pedido</div>
                    </form>
                </div>
                <%
                    Iterator ammounts = order.getAmmounts().iterator();
                    
                    for (int productID: order.getItems()) {
                        Product product = connector.getConector().getProductByID(productID);
                %>
                <article>
                    <section class="datosproducto">
                        <img src="<%=product.getImageURL()%>" alt="" height="100px" width="100px">
                        <div class="nombreProducto">
                            <h2><%=product.getName()%></h2>
                        </div>

                    </section>
                    <section class="informacionadicional">
                        <p><%=String.format("%.2f", product.getPrice())%>€</p>
                        <p><%=ammounts.next()%></p>
                    </section>
                </article>
            <%}%>
            </ul>
            <%}Connector.close();%>
            <%if (orders.isEmpty()) {%>
            <h1 class="prompt">No hay ningún pedido en proceso ahora mismo.</h1>
            <%}%>
        
            <div id="flechayboton">
                <a href="#" class="volver" onclick="window.location.href='Admin.jsp'" >
                    <div>
                        <span></span>
                    </div>
                </a>
                
                
        </main>
    </body>
</html>
