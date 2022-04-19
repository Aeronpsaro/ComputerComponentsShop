package control;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Catalogue;
import model.Product;
import testDB.DummySeeker;

public class RemoveCommand extends FrontCommand {
    
    private void removeProduct(int id) {
        //HttpSession session = request.getSession(true);

        //Catalogue catalogue = (Catalogue)request.getSession().getAttribute("catalogue");
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        //for(Product p: catalogue.getProducts()){
        //    if( product.equals(p)) {
        cart.remove(id);
        //    }
        //}
    }
    
    @Override
    public void process() throws ServletException, IOException {
        removeProduct(Integer.parseInt(request.getParameter("cartProduct")));

        try {
            redirect("/Cart.jsp");
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException ex) {
            Logger.getLogger(RemoveCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
