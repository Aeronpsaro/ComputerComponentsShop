<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="styles.css">


<header>
    <ul id="encabezado">
        <li id="fotoLogoli"><a href="Catalogue.jsp"><img style="border-radius:1em" id="fotologo" src="img\logo.jpeg" alt="menu" height="80px"></a></li>
        <li id="buscar">
            <form action="FrontServlet" method="post">
                <input type="submit" style="display: none" />
                <input type="hidden" name="command" value="SearchCommand">
                <input id="texto" type="text" name="query" placeholder="Buscar">
            </form>
        </li>
        <nav id="buscador">
        <li><a class="vinculo" href="Catalogue.jsp" style="color: white"> Inicio</a></li>
        <li><a class="vinculo" href="gestionarPedido.jsp" style="color: white"> Pedidos</a></li>
        <%if (((Integer)request.getSession().getAttribute("uid")).intValue() == -1) {%>
            <li><a class="vinculo" href="login.jsp" style="color: white"> Iniciar sesión</a></li>
        <%} else {%>
            <li>
                <form id="SignOutForm" action="FrontServlet"><input type="hidden" name="command" value="SignOutCommand"><a class="vinculo" onclick="document.getElementById('SignOutForm').submit()" style="color: white"> Cerrar sesión</a></form>
            </li>
        <%}%>
        <%if (((Integer)request.getSession().getAttribute("uid")).intValue() <= -2) {%>
            <li><a class="vinculo" href="Admin.jsp" style="color: white"> Administración</a></li>
        <%}%>
        <li><a class="vinculo" href="Contact.jsp" style="color: white"> Contacto</a></li>
        <li id="carro"><a class="vinculo" href="Cart.jsp"><img id="imgCarrito" src="img\carrito.png" alt="menu" height="30px"></a></li>                    </nav>
    </ul>
    
    <div id="encabezado900">
    <ul id="encabezadomediano">
        <li id="fotoLogoli"><a href="Catalogue.jsp"><img id="fotologo" src="img\logo.jpeg" alt="menu" height="60px"></a></li>
        <li id="buscar">
            <form action="FrontServlet" method="post">
                <input type="submit" style="display: none" />
                <input type="hidden" name="command" value="SearchCommand">
                <input id="texto" type="text" name="query" placeholder="Buscar">
            </form>
        </li>
        <nav id="buscador">
    </ul>
    <ul id="links">
        <li><a class="vinculo" href="Catalogue.jsp" style="color: white"> Inicio</a></li>
        <li><a class="vinculo" href="gestionarPedido.jsp" style="color: white"> Pedidos</a></li>
    
        <%if (((Integer)request.getSession().getAttribute("uid")).intValue() == -1) {%>
            <li><a class="vinculo" href="login.jsp" style="color: white"> Iniciar sesión</a></li>
        <%} else {%>
            <li>
                <form id="SignOutForm" action="FrontServlet"><input type="hidden" name="command" value="SignOutCommand"><a class="vinculo" onclick="document.getElementById('SignOutForm').submit()" style="color: white"> Cerrar sesión</a></form>
            </li>
        <%}%>
        <%if (((Integer)request.getSession().getAttribute("uid")).intValue() <= -2) {%>
            <li><a class="vinculo" href="Admin.jsp" style="color: white"> Administración</a></li>
        <%}%>
        <li><a class="vinculo" href="Contact.jsp" style="color: white"> Contacto</a></li>
        <li id="carro"><a class="vinculo" href="Cart.jsp"><img id="imgCarrito" src="img\carrito.png" alt="menu" height="30px"></a></li>                    </nav>
    </ul>
    </div>
</header>
