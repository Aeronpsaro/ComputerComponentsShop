<%-- 
    Document   : index
    Created on : 22 mar. 2022, 13:15:40
    Author     : alber
--%>
<%@page import="control.Context"%>
<%@page import="model.Product"%>
<%@page import="model.Catalogue"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Catalogue catalogue = Catalogue.getCatalogue(); %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/Catalog1.css">
        
    </head>
    <body>
       <jsp:include page="header.jsp"/>
        
        <main>
        <h1>Catálogo</h1>
        <div class="row" style="margin-left: 4em; margin-right: 4em">
        <% for(Product product:catalogue.getProducts()) { %>
            <% if(product.getAmmount()>0){ %>
                <div class="col-3">
                    <div class="productCard">
                        <div style="margin: 2em;">
                            <form onclick="submit()" action="FrontServlet" method="POST">
                                <input type="hidden" name="command" value="SeeProductCommand"/>
                                <input type="hidden" name="product" value="<%=product.getID()%>"/>
                                <div class="row">
                                    <img id="imgProducto" src="<%= product.getImageURL() %>"/>
                                </div>
                                <div id="infodelproducto" class="row">
                                    <div id="nombreproducto" class="col">
                                        <%=product.getName()%>
                                    </div>
                                    <div id="precioproducto" class="col"">
                                        <%=String.format("%.2f", product.getPrice())%>€
                                    </div>
                                </div>
                            </form>
                            <div class="row">
                                <form action="FrontServlet" method="POST">
                                    <input type="hidden" name="command" value="AddCommand">
                                    <input type="hidden" name="product" value="<%=product.getID()%>">
                                    <button id="agregarcarrito" type="submit"">
                                        <div class="row gx-0">
                                            <div  class="col-auto d-flex align-items-center justify-content-center">
                                                <p id="añadirCarrito">Añadir al carrito</p>
                                            </div>
                                            <div class="col-auto d-flex align-items-center justify-content-center">
                                                <image style="width: 2em; height: 2em" id="carritoCompra" src="Assets/CartIcon.png"/>
                                            </div>
                                        </div>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            <% } %>
        <% } %>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            
        </main>
    </body>
</html>
