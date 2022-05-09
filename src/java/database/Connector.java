package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Catalogue;
import model.GenericProduct;
import model.Product;
import control.Context;
import model.Order;


/**
 *
 * @author Usuario
 */
public class Connector {
    Catalogue catalogo = Catalogue.getCatalogue();
    private static final String URL = Context.getPath("Database\\shopDB.db");

    private static Connection CONNECT;

    private static final Connector INSTANCE;

    public static Connector getConector() {
        return INSTANCE;
    }


    static{
        connect();
        INSTANCE = new Connector(); 
    }

    public static void connect(){
        try {
          Class.forName("org.sqlite.JDBC").newInstance();
        } catch (Exception ex) {
          System.err.println("no se pudo cargar jbdc"+ ex);
        }
        try{
            CONNECT = DriverManager.getConnection("JDBC:sqlite:" + URL);
        }catch(SQLException ex) {
            System.out.println("conexion fallida");
        }
    }

    

    public static void close(){
        try {
            CONNECT.close();
            System.out.println("cerrado");
        } catch (SQLException ex) {
            Logger.getLogger(Connector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //product control
    public int addProduct(Product product, int ammount){
        try {


            PreparedStatement st = CONNECT.prepareStatement("insert into products (name, description, score, image, price, type, brand) values (?,?,?,?,?,?,?)");
            st.setString(1, product.getName());
            st.setString(2, product.getDescription());
            st.setDouble(3, product.getScore());
            st.setString(4, product.getImageURL());
            st.setDouble(5, product.getPrice());
            st.setString(6, product.getType().getSimpleName());
            st.setString(7, product.getBrand());
            st.execute();


            PreparedStatement st1 = CONNECT.prepareStatement("select last_insert_rowid()");
            ResultSet result = st1.executeQuery();

            product.setId(result.getInt(1));
            

            PreparedStatement st2 = CONNECT.prepareStatement("insert into stock (id, ammount) values (?,?)");
            st2.setInt(1, product.getID());
            st2.setInt(2, ammount);
            st2.execute();

            
            return product.getID();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        
        return -1;

    }

    public void removeProduct(int id){
        try {
            PreparedStatement st = CONNECT.prepareStatement("delete from stock WHERE id = " + id);
            st.execute();
                              st = CONNECT.prepareStatement("delete from products WHERE id = " + id);
            st.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }

    public List<Product> getProducts(){
        ResultSet result = null;
        Product productAux= null;
        List<Product> products= new ArrayList<>();
        try {
            PreparedStatement st = CONNECT.prepareStatement("select * from products");
            result = st.executeQuery();
            while (result.next()) {

                int id = result.getInt("id");

                String name = result.getString("name");

                String description = result.getString("description");

                String image = result.getString("image");

                float price = result.getFloat("price");

                String brand = result.getString("brand");

                productAux = new GenericProduct(name, description, image, price, brand);
                productAux.setId(id);
                products.add(productAux);

            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        return products;
        
    }
    

    public Product getProductByID(int aid){
        ResultSet result = null;
        GenericProduct product = null;
        try {
            PreparedStatement st = CONNECT.prepareStatement("select * from products where id = " + aid);
            result = st.executeQuery();
            while (result.next()) {

                int id = result.getInt("id");

                String name = result.getString("name");

                String description = result.getString("description");

                String image = result.getString("image");

                float price = result.getFloat("price");

                String brand = result.getString("brand");

                product = new GenericProduct(name, description, image, price, brand);
                product.setId(id);
                product.setAmmount(this.getAmmountByID(id));
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        return product;
        
    }
    
    //Stock control
    public void increaseStock(int id, int q){
        try {

            PreparedStatement st = CONNECT.prepareStatement("UPDATE stock SET ammount = ammount + "+ q +" WHERE id = " + id);
            st.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }


    }

    public void reduceStock(int id, int q){
        try {

            PreparedStatement st = CONNECT.prepareStatement("UPDATE stock SET ammount = ammount - "+ q +" WHERE id = " + id);
            st.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }


    }

    public int getAmmountByID(int aid){
        ResultSet result = null;
        try {
            PreparedStatement st = CONNECT.prepareStatement("select * from stock where id = " + aid);
            result = st.executeQuery();
            while (result.next()) {

                return result.getInt("ammount");
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        return -1;
        
    }

    //orders 
    public void addOrder(int user_id, int[] items, int[] ammounts){
        try {


            PreparedStatement st = CONNECT.prepareStatement("insert into orders (user_id, items, ammounts) values (?,?,?)");
            
            st.setInt(1, user_id);
            st.setString(2, Arrays.toString(items));
            st.setString(3, Arrays.toString(ammounts));
            st.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }


    }

    public void removeOrder(int id){
        try {
            PreparedStatement st = CONNECT.prepareStatement("delete from orders WHERE id = " + id);
            st.execute();
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }

    public List<Order> getOrders(){
        List<Order> orders = new ArrayList<>();
        ResultSet result = null;
        Order auxOrder = null;
        List<Product> products= new ArrayList<>();
        try {
            PreparedStatement st = CONNECT.prepareStatement("select * from orders");
            result = st.executeQuery();
            while (result.next()) {
                

                int id = result.getInt("id");

                int user_id = result.getInt("user_id");
                
                String itemsString =result.getString("items");
                String ammountsString = result.getString("ammounts");

                List<String> itemsSL = Arrays.asList(itemsString.substring(1, itemsString.length() - 1).split(", "));
                List<String> ammountsSL = Arrays.asList(ammountsString.substring(1, ammountsString.length() - 1).split(", "));

                List<Integer> items = new ArrayList<>();
                List<Integer> ammounts = new ArrayList<>();

                for(String s : itemsSL) items.add(Integer.valueOf(s));
                for(String s : ammountsSL) ammounts.add(Integer.valueOf(s));

                auxOrder = new Order(id, user_id, items, ammounts);      

                orders.add(auxOrder);           

            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        return orders;
        
    }

    public List<Order> getOrders(int userId){
        List<Order> orders = new ArrayList<>();
        ResultSet result = null;
        Order auxOrder = null;
        List<Product> products= new ArrayList<>();
        try {
            PreparedStatement st = CONNECT.prepareStatement("select * from orders");
            result = st.executeQuery();
            while (result.next()) {
                

                int id = result.getInt("id");

                int user_id = result.getInt("user_id");
                
                String itemsString =result.getString("items");
                String ammountsString = result.getString("ammounts");

                List<String> itemsSL = Arrays.asList(itemsString.substring(1, itemsString.length() - 1).split(", "));
                List<String> ammountsSL = Arrays.asList(ammountsString.substring(1, ammountsString.length() - 1).split(", "));

                List<Integer> items = new ArrayList<>();
                List<Integer> ammounts = new ArrayList<>();

                if(userId == user_id){
                    for(String s : itemsSL) items.add(Integer.valueOf(s));
                    for(String s : ammountsSL) ammounts.add(Integer.valueOf(s));

                    auxOrder = new Order(id, user_id, items, ammounts);      

                    orders.add(auxOrder);           
                }
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        return orders;
        
    }

    //misc
    public void showProducts(){
        ResultSet result = null;
        try {
            PreparedStatement st = CONNECT.prepareStatement("select * from products");
            result = st.executeQuery();
            while (result.next()) {
                System.out.print("ID: ");
                System.out.println(result.getInt("id"));

                System.out.print("Nombre: ");
                System.out.println(result.getString("name"));

                System.out.print("descripcion: ");
                System.out.println(result.getString("description"));

                System.out.print("Ammount: ");
                System.out.println(getAmmountByID(result.getInt("id")));

                System.out.println("=======================");
            }

            


        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }

    public void clearDB(){
        try {

            PreparedStatement st = CONNECT.prepareStatement("delete from stock;");
            st.execute();
                              st = CONNECT.prepareStatement("delete from products;");
            st.execute();
                              st = CONNECT.prepareStatement("delete from orders;");
            st.execute();
                              st = CONNECT.prepareStatement("DELETE FROM SQLITE_SEQUENCE;");
            st.execute();   

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }
    
    public List<Product> searchByName(String queryName) {
        connect();
        ResultSet result = null;
        PreparedStatement st;
        Product productAux;
        List<Product> products = new ArrayList<>();
        try {
            st = CONNECT.prepareStatement("SELECT * FROM products WHERE name LIKE '%"+queryName+"%'");
            result = st.executeQuery();
            while (result.next()) {

                int id = result.getInt("id");

                String name = result.getString("name");

                String description = result.getString("description");

                String image = result.getString("image");

                float price = result.getFloat("price");

                String brand = result.getString("brand");

                productAux = new GenericProduct(name, description, image, price, brand);
                productAux.setId(id);
                productAux.setAmmount(this.getAmmountByID(id));
                
                products.add(productAux);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Connector.class.getName()).log(Level.SEVERE, null, ex);
        }
        close();
        return products;
    }

}




