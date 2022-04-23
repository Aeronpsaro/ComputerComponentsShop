package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;
import model.Cart;
import model.Catalogue;
import model.GenericProduct;
import model.PantallaProduct;
import model.Product;
import model.RatonProduct;
import model.TecladoProduct;

public class AddProductCommand extends FrontCommand {
    Connector con = Connector.getConector();
    Catalogue catalogo = Catalogue.getCatalogue();
    
    @Override
    public void process() throws ServletException, IOException {
        int idProducto = -1;
        con.connect();

        GenericProduct prod = new GenericProduct(
                request.getParameter("nombreproducto"),
                request.getParameter("descripcionproducto"),
                request.getParameter("fotoproducto"),
                Float.parseFloat(request.getParameter("precioproducto")),
                request.getParameter("marcaproducto")
        );

        switch(request.getParameter("tipoproducto")){
            case "Teclados":
                idProducto = con.addProduct(new TecladoProduct(prod));
                break;
            case "Pantallas":
                idProducto = con.addProduct(new PantallaProduct(prod));
                break;
            case "Ratones":
                idProducto = con.addProduct(new RatonProduct(prod));
                break;
            case "Generico":
                idProducto = con.addProduct(prod);
                break;
            default:
                idProducto = con.addProduct(prod);
                break;
        }

        con.increaseStock(idProducto, Integer.parseInt(request.getParameter("cantidadproducto")));
        catalogo.addProduct(con.getProductByID(idProducto));
        con.close();
        redirect("/Catalogue.jsp");
    }
}
