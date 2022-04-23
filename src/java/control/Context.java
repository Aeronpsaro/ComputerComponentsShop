package control;

import java.io.File;
import javax.servlet.ServletRequest;

public class Context {
    private static String absoluteRootPath;
    
    private Context(){};
    
    public static void setContext(ServletRequest request) {
        absoluteRootPath = request.getServletContext().getRealPath("");
    }
    
    public static String getPath(String relativePath) {
        return absoluteRootPath + File.separator + relativePath;
    }
}
