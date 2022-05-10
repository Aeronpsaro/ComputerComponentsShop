package control;

import java.io.IOException;
import javax.servlet.ServletException;

public class SignInCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pswd1");
        //request.getSession().setAttribute("uid", Connector.signUp(username, password))
        redirect("/Catalogue.jsp");
    }

}
