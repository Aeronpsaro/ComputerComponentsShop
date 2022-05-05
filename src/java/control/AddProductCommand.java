package control;

import database.Connector;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.http.Part;
import model.Catalogue;
import model.GenericProduct;
import model.PantallaProduct;
import model.RatonProduct;
import model.TecladoProduct;

public class AddProductCommand extends FrontCommand {
    Connector con = Connector.getConector();
    Catalogue catalogo = Catalogue.getCatalogue();
    
    @Override
    public void process() throws ServletException, IOException {
        int idProducto = -1;
        Connector.connect();
        
        Part filePart = request.getPart("foto"); // Retrieves <input type="file" name="file">
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
        InputStream fileContent = filePart.getInputStream();
        
        File uploads = new File(Context.getPath("img"));
        File file = new File(uploads, fileName);

        if(!file.exists()) {
            Files.copy(fileContent, file.toPath());
        }
        
        
        GenericProduct prod = new GenericProduct(
                request.getParameter("nombreproducto"),
                request.getParameter("descripcionproducto"),
                "img\\"+fileName,
                Float.parseFloat(request.getParameter("precioproducto")),
                request.getParameter("marcaproducto")
        );
        int ammount = Integer.parseInt(request.getParameter("cantidadproducto"));
        switch(request.getParameter("tipoproducto")){
            case "Teclados":
                idProducto = con.addProduct(new TecladoProduct(prod),ammount);
                break;
            case "Pantallas":
                idProducto = con.addProduct(new PantallaProduct(prod),ammount);
                break;
            case "Ratones":
                idProducto = con.addProduct(new RatonProduct(prod),ammount);
                break;
            case "Genérico":
                idProducto = con.addProduct(prod);
                break;
            default:
                idProducto = con.addProduct(prod,ammount);
                break;
        }

        catalogo.addProduct(con.getProductByID(idProducto));
        Connector.close();
        redirect("/Catalogue.jsp");
    }
}
