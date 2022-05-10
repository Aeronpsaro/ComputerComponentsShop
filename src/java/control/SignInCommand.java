package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;

public class SignInCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        String username = request.getParameter("usuario");
        String password = request.getParameter("contrasenna");
        int uid = Connector.getConector().signIn(username, password);
        if (uid == -1){ 
            request.setAttribute("loginError", true);
            redirect("/login.jsp");
        }
        request.getSession().setAttribute("uid", uid);
        redirect("/Catalogue.jsp");
    }

}
