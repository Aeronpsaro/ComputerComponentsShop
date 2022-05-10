package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;

public class SignUpCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pswd1");
        int uid = Connector.getConector().signUp(username, password);
        if (uid == -1){ 
            request.setAttribute("signUpError", true);
            redirect("/SignUp.jsp");
        }
        request.getSession().setAttribute("uid", uid);
        redirect("/Catalogue.jsp");
    }

}
