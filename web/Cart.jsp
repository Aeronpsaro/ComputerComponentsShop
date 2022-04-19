<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product"%>
<%@page import="model.Cart"%>
<!DOCTYPE html>
<% Cart cart = (Cart)request.getSession().getAttribute("cart"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Computer Components Shop</title>
        <link rel="stylesheet" href="css/catalogue.css">
        <link rel="stylesheet" href="css/carrito.css">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <main>
        <article id="carrito">
            <section id="tituloscarrito">
                <h2 id="cantidadTitulo">CANTIDAD</h2>
                <h2 id="precio">PRECIO</h2>
            </section>
            
            <% for(Product product:cart.getAmmounts().keySet()) { %>
            <section id="productoscarrito">
                <ul class="producto">
                    <li><img src="<%=product.getImageURL() %>" width="120px" height="100px"/></li>    
                    <li><%=product.getName() %></li>
                    <li> <div class="cantidad">
                        <select name="cantidad">
                            <option selected>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                      </div></li>
                    <li><%=String.format("%.2f", product.getPrice()) %>€</li>
                    <li>
                        <form action="FrontServlet" method="POST">
                            <input type="hidden" name="command" value="RemoveCommand">
                            <input type="hidden" name="product" value="<%=product.getID()%>">
                            <input type="submit">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="20px">
                            </input>
                        </form>
                    </li>
                </ul>

             
            </section>
             <% } %>

            <div id="Precioyboton">

              <section id="preciototal">
                <h2>Precio Total</h2>
                <p id="pTotal">0.00€</p>
              </section>
              <div id="botonPedido">
                <button>Hacer Pedido</button>
              </div>

            </div>
    
        </article>
        </main>
             <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
