<%@page import="model.Product"%>
<%@page import="model.Catalogue"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Catalogue catalogue = (Catalogue)request.getAttribute("catalogue"); %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Tienda</h1>
        <div class="row" style="margin-left: 4em; margin-right: 4em">
        <% for(Product product:catalogue.getProducts()) { %>
            <div class="col-3">
                <div class="productCard">
                    <div style="margin: 2em">
                        <div class="row">
                            <img src="<%= product.getImageURL() %>"/>
                        </div>
                        <div class="row">
                            <div class="col">
                                <%=product.getName()%>
                            </div>
                            <div class="col" style="text-align: right">
                                <%=product.getPrice()%>€
                            </div>
                        </div>
                        <div class="row">
                            <form>
                                <button type="button" style="float:right">
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
                        </div>
                    </div>
                </div>
            </div>
        <% } %>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
