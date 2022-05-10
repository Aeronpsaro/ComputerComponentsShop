package control;

import java.io.IOException;
import javax.servlet.ServletException;

public class SignUpCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        String username = request.getParameter("usuario");
        String password = request.getParameter("contraseña");
        //request.getSession().setAttribute("uid", Connector.signIn(username, password))
        redirect("/Catalogue.jsp");
    }

}
