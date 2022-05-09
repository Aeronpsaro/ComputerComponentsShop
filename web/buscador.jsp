<%-- 
    Document   : buscador
    Created on : 22 mar. 2022, 13:18:09
    Author     : alber
--%>

<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/Catalog1.css">
        <link rel="stylesheet" href="css/buscador.css">
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
            <form action="FrontServlet">
                <input type="submit" style="display: none" />
                <input type="hidden" name="command" value="SearchFiltersCommand">
                <input style="width:80vw" class="center" id="texto" type="text" name="query" placeholder="Buscar">
                <section id="filtros">
                    <select name="type">
                        <option>Cualquiera</option>
                        <option>Teclado</option>
                        <option>Ratón</option>
                        <option>Pantalla</option>
                    </select>
                    <label class="input"><input type="checkbox" id="cbox2" value="hideNoStock" name="stockFilter">Ocultar productos sin Stock</label>
                    <input name="minPrice" type="range" min="0" value="0" max="1000" step="10">
                    <input name="maxPrice" type="range" min="0" value="100" max="1000" step="10">
                </section>
                <button id="searchButton" style="float:right">Buscar</button>
            </form>
            <div class="row" style="margin-left: 4em; margin-right: 4em">
                <%for (Product product : (List<Product>) request.getSession().getAttribute("queryResults")) {%>
                    <div class="col-sm-6 col-md-4 col-lg-3">
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
            </div>
        </main>
    </body>
</html>
