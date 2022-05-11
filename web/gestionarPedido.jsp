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
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/gestionarPedido.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <main>
            <%
                Connector connector = Connector.getConector();
                Connector.connect();
                int userID = (Integer)request.getSession().getAttribute("uid");
                List<Order>orders = connector.getOrders(userID);
                for (Order order:orders) {%>
            <ul>
                <h1>Pedido <%=order.getId()%></h1>
                <div id="orderControls" style="float:right">
                    <form action="FrontServlet" method="POST" onclick="submit()">
                        <input type="hidden" name="command" value="RemoveOrderCommand">
                        <input type="hidden" name="order" value="<%=order.getId()%>">
                        <div><img class="deleteProduct" src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="70px">Eliminar pedido</div>
                    </form>
                        <form action="FrontServlet" method="POST" onclick="submit()">
                        <input type="hidden" name="command" value="ReturnToCartCommand">
                        <input type="hidden" name="order" value="<%=order.getId()%>">
                        <button>Devolver el pedido al carrito</button>
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
            <%if (userID == -1) {%>
            <h1 class="prompt">Usted no se ha autenticado. Para ver sus pedidos, <a href="login.jsp">inicie sesión</a>.</h1>
            <%} else if (orders.isEmpty()) {%>
            <h1 class="prompt">No hay ningún pedido en proceso ahora mismo. <a href="Catalogue.jsp">Compre algo</a>.</h1>
            <%}%>
        </main>
    </body>
</html>
