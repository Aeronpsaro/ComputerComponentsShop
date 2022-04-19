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

public class AddCommand extends FrontCommand {
    
    private Product getProduct(int ID) {
        //HttpSession session = request.getSession(true);

        Catalogue catalogue = (Catalogue)request.getSession().getAttribute("catalogue");
        for(Product p: catalogue.getProducts()){
            if( ID == p.getId() ) {
                return p;
            }
        }
        return null;
    }
    
    @Override
    public void process() throws ServletException, IOException {
        Product product = getProduct(Integer.parseInt(request.getParameter("product")));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        
        cart.add(product);

        try {
            redirect("/Cart.jsp");
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException ex) {
            Logger.getLogger(AddCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
