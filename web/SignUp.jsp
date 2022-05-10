<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <jsp:include page="icon.jsp"/>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/login.css">
        <script>
        function matchPassword() {
            document.getElementById('pswd1')
                .setCustomValidity('');
            var password = document.getElementById("pswd1").value;
            var passwordRepeat = document.getElementById("pswdRepeat").value;
            if (document.getElementById("newUser").checkValidity()) {
                if (password != passwordRepeat) {
                    document.getElementById('pswd1')
                        .setCustomValidity('Las contraseñas deben coincidir.');
                } else {
                    alert("¡Gracias por confiar en nosotros!");
                }
            }
        }

    </script>
    
    <%if (request.getAttribute("signUpError") != null) {%>
            <script>
                this.window.alert("Ya existe un usuario con ese nombre");
            </script>
    <%}%>
    </head>
    <body style="background-color: #83a5c2">
        <jsp:include page="header.jsp"/>
        
        <main>
            <article>
            <h1>Regístrate</h1>
            <form id="newUser" action="FrontServlet">
                <input type="hidden" name="command" value="SignUpCommand">
                <input id="newUserName" placeholder="Usuario" minlength="3" type="username" required name="user">
                <input required id="pswd1" placeholder="Contraseña" minlength="8" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="pswd1">
                <input required id="pswdRepeat" placeholder="Confirme contraseña" minlength="8" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="pswd2">
                <button type="submit" onclick="matchPassword()">Regístrate</button>
             </form>  
            <div id="message">
                <span style="font-size:x-small">La contraseña debe contener al menos 8 caracteres, una mayúscula, una minúscula y un número.</span>
              </div>
            </article>
        </main>
    </body>
</html>