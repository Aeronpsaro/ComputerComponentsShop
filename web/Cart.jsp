<%@page import="model.Catalogue"%>
<%@page import="model.Product"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Cart cart = (Cart)request.getSession().getAttribute("cart"); %>
<% Catalogue catalogue = (Catalogue)request.getSession().getAttribute("catalogue"); %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Carrito</h1>
        <a href="/ComputerComponentsShopMaster/Catalogue.jsp"><button>Seguir comprando</button></a> 
        <% for(Integer i:cart.getAmmounts().keySet()) { %>
        <% Product product = catalogue.getProductById(i); %>
            <div class="row">
                <div class="col">
                    <img src="<%=product.getImage() %>"/>
                </div>
                <div class="col-auto">
                    <%=product.getName() %>
                </div>
                <div class="col">
                    <%=String.format("%.2f", product.getPrice()) %>
                </div>
                <div class="col">
                    <%=cart.getAmmounts().get(i) %>
                </div>
                
                <div class="col">
                    
                    <form action="FrontServlet" method="POST">
                                <input type="hidden" name="command" value="RemoveCommand">
                                <input type="hidden" name="cartProduct" value=<%=i%> >
                                <button type="submit" style="float:right">
                                    <div class="row gx-0">
                                        <div class="col-auto d-flex align-items-center justify-content-center">
                                            eliminar
                                        </div>
                                        
                                    </div>
                                </button>
                    </form>
                </div>
            </div>
        <% } %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
