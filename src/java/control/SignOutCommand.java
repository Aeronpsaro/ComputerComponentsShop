package control;

import java.io.IOException;
import javax.servlet.ServletException;

public class SignOutCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        //Connector.signOut();
        request.getSession().setAttribute("uid", -1);
        redirect("/login.jsp");
    }

}
