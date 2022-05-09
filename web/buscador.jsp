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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/buscador.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/Catalog.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
                <section id="filtros">
                    <label class="input"><input type="checkbox" id="cbox1" value="first_checkbox"> Filtro1</label>
                    <label class="input"><input type="checkbox" id="cbox2" value="second_checkbox"> Filtro2</label>
                    <label class="input"><input type="checkbox" id="cbox3" value="third_checkbox"> Filtro3</label>
                    <label class="input" ><input type="checkbox" id="cbox4" value="fourth_checkbox"> Filtro4</label>
                    <label class="input"><input type="checkbox" id="cbox5" value="fifth_checkbox"> Filtro5</label>
                
                </section>
            <div class="row" style="margin-left: 4em; margin-right: 4em">
            <%for (Product product : (List<Product>) request.getSession().getAttribute("queryResults")) {%>
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
                                                <image style="width: 2em; height: 2em" src="Assets/CartIcon.png"/>
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
        </main>
    </body>
</html>
