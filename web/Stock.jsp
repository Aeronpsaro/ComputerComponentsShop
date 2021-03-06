<%-- 
    Document   : Stock
    Created on : 18 abr. 2022, 11:14:52
    Author     : alber
--%>

<%@page import="model.Product"%>
<%@page import="model.Catalogue"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% Catalogue catalogue = Catalogue.getCatalogue(); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
        <jsp:include page="icon.jsp"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/stock.css">
        <link rel="stylesheet" href="css/flechaboton.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
            <h1>Inventario</h1>
            <section id="titulos">
                <h2>ID</h2>
                <h2>Nombre</h2>
                <h2>Precio</h2>
                <h2>Cantidad</h2>
            </section>
            <% for(Product product:catalogue.getProducts()) { %>
            <section>
                <ul id="productosStock">                  
                    <li> <%=product.getID()%> </li>
                    <li> <%=product.getName()%> </li>
                    <li> <%=product.getPrice()%> </li>
                    <li> <%=product.getAmmount()%> </li>
                </ul>
            <% } %>
             
            </section>
            <div id="flechayboton">
                <a href="#" class="volver" onclick="window.location.href='Admin.jsp'">
                    <div>
                        <span></span>
                    </div>
                </a>
            
                <button id="añadirproducto" onclick="window.location.href='addProduct.jsp'" type="button">Añadir producto</button>
            </div>
        </main>
    </body>
</html>
