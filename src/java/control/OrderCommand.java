package control;

import java.io.IOException;
import javax.servlet.ServletException;

public class OrderCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        
        redirect("");
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
