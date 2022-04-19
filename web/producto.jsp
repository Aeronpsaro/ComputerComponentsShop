<%-- 
    Document   : producto
    Created on : 22 mar. 2022, 14:12:21
    Author     : alber
--%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Product product = (Product)request.getAttribute("product"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop - <%=product.getName()%></title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/producto.css">
        <link rel="stylesheet" href="styles.css">

    </head>
    <body>
        <header>
            <ul id="encabezado">
                <li id="fotologo"><a href="index.jsp"><img src="img\logo.jpeg" alt="menu" height="80px"></a></li>
                <li id="buscar"><form action="" method="post"><input id="texto" type="text" name="buscar" value="Buscar"></form></li>
                <nav id="buscador">
                    <li><a class="vinculo" href="index.jsp" style="color: white"> Home</a></li>
                    <li><a class="vinculo" href="login.jsp" style="color: white"> Login</a></li>
                    <li id="carro"><a class="vinculo" href="carrito.jsp" style="color: white"><img src="img\carro.jpg" alt="menu" height="30px"></a></li>                </nav>
            </ul>
        </header>
        
        <main>
        <article>
            <section id="caja1">
                <img id="imagenProducto" src="<%=product.getImageURL()%>" alt="" height="300px">
                <div id="infoproducto">
                    <p><%=product.getBrand()%></p>
                    <p><%=String.format("%.2f", product.getPrice())%>€</p>
                </div>
                
            </section>

            <section id="caja2">
                <h2><%=product.getName()%></h2>
                <p><%=product.getDescription()%></p>
                <form action="FrontServlet" method="POST">
                    <input type="hidden" name="command" value="AddCommand">
                    <input type="hidden" name="product" value="<%=product.getID()%>">
                    <button type="submit" style="float:right">
                        <div class="row gx-0">
                            <div class="col-auto d-flex align-items-center justify-content-center">
                                Añadir al carrito
                            </div>
                            <div class="col-auto d-flex align-items-center justify-content-center">
                                <image style="width: 2em; height: 2em" src="Assets/CartIcon.png"/>
                            </div>
                        </div>
                    </button>
                </form>
            </section>
        </article>
        </main>
    </body>
</html>

