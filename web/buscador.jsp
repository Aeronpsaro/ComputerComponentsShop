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
        <link rel="stylesheet" href="css/catalogue.css">
        <link rel="stylesheet" href="css/buscador.css">
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
        </main>
    </body>
</html>
