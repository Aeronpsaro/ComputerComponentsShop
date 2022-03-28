<%-- 
    Document   : carrito
    Created on : 22 mar. 2022, 13:18:41
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/carrito.css">
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
        <article id="carrito">
            <section id="tituloscarrito">
                <h2 id="cantidadTitulo">CANTIDAD</h2>
                <h2 id="precio">PRECIO</h2>
            </section>
            
            <section id="productoscarrito">
                <ul class="producto">
                    <li>imagenProducto</li>    
                    <li>Producto1</li>
                    <li> <div class="cantidad">
                        <select name="cantidad">
                
                          <option value="1">1</option>
                
                          <option value="2">2</option>
                
                          <option value="3">3</option>
                
                          <option value="4">4</option>
                
                          <option value="5">5</option>
                
                        </select>
                      </div></li>
                    <li>0.00€</li>
                    <li><a> <img src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="20px"></a></li>
                </ul>

                <ul class="producto">
                    <li>imagenProducto</li>    
                    <li>Producto2</li>
                    <li> <div class="cantidad">
                        <select name="cantidad">
                
                          <option value="1">1</option>
                
                          <option value="2">2</option>
                
                          <option value="3">3</option>
                
                          <option value="4">4</option>
                
                          <option value="5">5</option>
                
                        </select>
                      </div></li>
                    <li>0.00€</li>
                    <li><a> <img src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="20px"></a></li>
                </ul>

                <ul class="producto">
                    <li>imagenProducto</li>    
                    <li>Producto3</li>
                    <li> <div class="cantidad">
                        <select name="cantidad">
                
                          <option value="1">1</option>
                
                          <option value="2">2</option>
                
                          <option value="3">3</option>
                
                          <option value="4">4</option>
                
                          <option value="5">5</option>
                
                        </select>
                      </div></li>
                    <li>0.00€</li>
                    <li><a> <img src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="20px"></a></li>
                </ul>

                <ul class="producto">
                    <li>imagenProducto</li>    
                    <li>Producto4</li>
                    <li> <div class="cantidad">
                        <select name="cantidad">
                
                          <option value="1">1</option>
                
                          <option value="2">2</option>
                
                          <option value="3">3</option>
                
                          <option value="4">4</option>
                
                          <option value="5">5</option>
                
                        </select>
                      </div></li>
                    <li>0.00€</li>
                    <li><img src="https://upload.wikimedia.org/wikipedia/commons/f/f5/Octagon_delete.svg" alt="" height="20px"> </li>
                </ul>
            </section>

            <div id="cajafinal">

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
    </body>
</html>
