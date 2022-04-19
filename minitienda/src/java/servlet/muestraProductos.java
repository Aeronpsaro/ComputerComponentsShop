package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import java.util.ArrayList;
import clases.Producto;
import clases.LeeProductos;
@WebServlet(name = "muestraProductos",
 urlPatterns = {"/muestraProductos"})
public class muestraProductos extends HttpServlet {

 protected void processRequest(HttpServletRequest request,
 HttpServletResponse response)
 throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
 PrintWriter out = response.getWriter();
 try {
 ArrayList <Producto> productos =
 new ArrayList<Producto>();
 int cont=0;
 String contador;
 Producto producto;
 ServletContext sc = this.getServletContext();
 String path = sc.getRealPath("/WEB-INF/Productos.txt");
 path = path.replace('\\','/');
 LeeProductos.clearCont();
 productos = LeeProductos.leeProductos(path);
 cont = LeeProductos.getCont();
 contador= String.valueOf(cont);

 request.setAttribute("Productos",productos);
 request.setAttribute("contador", contador);
 request.getRequestDispatcher("/despliegaProductos.jsp")
 .forward(request, response);


 } finally {
 out.close();
 }
 }
}