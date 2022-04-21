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
        <link rel="stylesheet" href="css/catalogue.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/añadirproducto.css">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <main>
            <h1>Añadir Producto</h1>
            
            <article id="todoformulario">
                    <section>
                        <ul class="relleno">
                            <li class ="formulariotitulos" >Nombre del producto</li>
                            <li class ="formulariotitulos">Seleccione un tipo de producto</li>
                            <li class ="formulariotitulos">Precio</li>
                            <li class ="formulariotitulos">Cantidad en stock</li>
                            <li class ="formulariotitulos">Subir foto del producto</li>
                        </ul>
                    </section>
                    
                    <section>
                        <form id="formulario" action="" method="post">
                            <ul class="relleno">
                                <input class="formulario" id="nombreproducto" type="text" placeholder="Nombre producto" name="nombreproducto">
                                <select class="formulario" id="tipoproducto" name="text">
                                    <option>Teclados</option>
                                    <option>Ratones</option>
                                    <option>Pantallas</option>
                                </select>
                                <input class="formulario" id="precioProducto" type="text" placeholder="Precio" name="precioproducto">
                                <input class="formulario" id="cantidadproducto" type="text" placeholder="Cantidad en Stock" name="cantidadproducto">
                                <input class ="formulario" type="file" name="foto" size="10">
                            </ul>
                        <input id="botonAñadirProducto" type="submit" value="Añadir producto">
                    </section>
                        
                    </form>
                
            </article>
            
        </main>
    </body>
</html>
