package control;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class FrontCommand {
    ServletContext context;
    HttpServletRequest request;
    HttpServletResponse response;
    
    public void initialize(ServletContext context, 
            HttpServletRequest request, HttpServletResponse response) {
        this.context=context;
        this.request=request;
        this.response=response;
    }
    
    abstract public void process() throws ServletException, IOException;
    
    protected void redirect(String objective) throws ServletException, IOException {
        RequestDispatcher dispatcher =
                context.getRequestDispatcher(objective);
        dispatcher.forward(request, response);
    }
}
