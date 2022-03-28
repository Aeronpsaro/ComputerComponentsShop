<%-- 
    Document   : buscador
    Created on : 22 mar. 2022, 13:18:09
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/buscador.css">
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
                <section id="filtros">
                    <label class="input"><input type="checkbox" id="cbox1" value="first_checkbox"> Filtro1</label>
                    <label class="input"><input type="checkbox" id="cbox2" value="second_checkbox"> Filtro2</label>
                    <label class="input"><input type="checkbox" id="cbox3" value="third_checkbox"> Filtro3</label>
                    <label class="input" ><input type="checkbox" id="cbox4" value="fourth_checkbox"> Filtro4</label>
                    <label class="input"><input type="checkbox" id="cbox5" value="fifth_checkbox"> Filtro5</label>
                
                </section>
        </main>
    </body>
</html>
