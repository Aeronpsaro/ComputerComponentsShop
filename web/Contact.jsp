<%-- 
    Document   : Contact
    Created on : 6 may. 2022, 10:46:15
    Author     : alber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computer Components Shop</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/Contact.css">
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <main>
                <h1>Página de contacto</h1>
                <article>
                    <div id="contacto">
                        <section>
                            <h2>Contacto</h2>
                            <ul>
                                <li>Teléfono: +34 6652428273</li>
                                <li>Correo electrónico: computercomponentshop@info.com</li>
                                <li>Fax: 9285457523</li>
                                <li>Redes Sociales: ComputerComponentShop</li>
                            </ul>
                        </section>
                        <section id="siguenos">
                            <h2>Síguenos</h2>
                            <div class="container">
		<!-- (p>lorem)*20 (código a usar si tienes instalada la extensión emmet)-->
                            </div>

                            <div class="social">
                                    <a href="https://www.facebook.com/"><img src="img/facebook.png" alt="facebook"></a>
                                    <a href="https://twitter.com/?lang=es"><img src="img/gorjeo.png" alt="twitter"></a>
                                    <a href="https://www.instagram.com"><img src="img/instagram.png" alt="instagram"></a>
                            </div>
                        </section>
                    </div>
                    
                    <section id="ubicacion">
                        <h2>Ubicación</h2>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3519.7914187344786!2d-15.462136033959228!3d28.09190457350012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xc409449d1c5b7af%3A0x54ff94cdfe1d1852!2sInform%C3%A1tica%20Y%20Equipamientos%20M%C3%A9dicos%20De%20Canarias%20S%20A%20L!5e0!3m2!1ses!2ses!4v1651831235031!5m2!1ses!2ses" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </section>
                </article>
             
        </main>
        
    </body>
</html>
