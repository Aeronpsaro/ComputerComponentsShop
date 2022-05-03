<%-- 
    Document   : gestionarPedido
    Created on : 22 mar. 2022, 14:12:51
    Author     : alber
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.Product"%>
<%@page import="model.Order"%>
<%@page import="java.util.List"%>
<%@page import="database.Connector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Computer Components Shop</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/gestionarPedido.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
            <%
                Connector connector = Connector.getConector();
                Connector.connect();
                int userID = 0;
                List<Order>orders = connector.getOrders(userID);
                Connector.close();
                for (Order order:orders) {%>
            <ul>
                <h1>Pedido <%=order.getId()%></h1>
                <form action="FrontServlet" method="POST" onclick="submit()">
                    <input type="hidden" name="command" value="RemoveOrderCommand">
                    <input type="hidden" name="order" value="<%=order.getId()%>">
                    <img class="deleteProduct" src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="20px">
                </form>
                <%
                    Iterator ammounts = order.getAmmounts().iterator();
                    Connector.connect();
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
        </main>
    </body>
</html>
