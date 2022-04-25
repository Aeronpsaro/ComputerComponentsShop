<%-- 
    Document   : AñadirProducto
    Created on : 18 abr. 2022, 12:11:48
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Producto</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/add_product.css">
        <link rel="stylesheet" href="css/flechaboton.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <main>
            <h1>Añadir Producto</h1>
            
            <article id="todoformulario">
                        <form id="formulario" action="FrontServlet" method="post" enctype = "multipart/form-data">
                            <input type="hidden" name="command" value="AddProductCommand">
                            <div id="nombreprod" class="añadirprod">
                                <li class ="formulariotitulos" >Nombre del producto</li>
                                <input class="formulario" id="nombreproducto" type="text" placeholder="Nombre producto" name="nombreproducto" required>
                            </div>
                            
                            <div id="descripcionprod" class="añadirprod">
                                <li class ="formulariotitulos" >Descripcion del producto</li>
                                <textarea class="formulario" id="descripcionproducto" placeholder="Descripcion producto" name="descripcionproducto"></textarea>
                            </div>
                            
                            <div id="seleccionprod" class="añadirprod">
                                <li class ="formulariotitulos">Seleccione un tipo de producto</li>
                                <select class="formulario" id="tipoproducto" name="tipoproducto" required="">
                                    <option>Teclados</option>
                                    <option>Ratones</option>
                                    <option>Pantallas</option>
                                    <<option>Generico</option>
                                </select>
                            </div> 
                            
                            <div id="marcaprod" class="añadirprod">
                                <li class ="formulariotitulos" >Marca del producto</li>
                                <input class="formulario" id="marcaproducto" type="text" placeholder="Marca producto" name="marcaproducto">
                            </div>
                            
                            <div id="precioprod" class="añadirprod">
                                <li class ="formulariotitulos">Precio</li>
                                <input class="formulario" id="precioProducto" type="text" placeholder="Precio" name="precioproducto" required>
                            </div>
                            
                            <div id="cantidadprod" class="añadirprod">
                                <li class ="formulariotitulos">Cantidad en stock</li>
                                <input class="formulario" id="cantidadproducto" type="text" placeholder="Cantidad en Stock" name="cantidadproducto" required>
                            </div>
                            
                            <div id="subirprod" class="añadirprod">
                                <li class ="formulariotitulos">Subir foto del producto</li>
                                <input class ="formulario" type="file" name="foto" size="10" required>
                            </div>
                            
                            <input id="botonAñadir" type="submit" value="Añadir producto">
                        
                    </form>
                
            </article>
            
            <div id="flechayboton">
                <a href="#" class="volver" onclick="window.location.href='Stock.jsp'" >
                    <div>
                        <span></span>
                    </div>
                </a>
            
        </main>
    </body>
</html>
