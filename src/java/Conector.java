
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Usuario
 */
public class Conector {
    String url;
    Connection connect;

    public Conector() {
        url = "C:\\Users\\Usuario\\Documents\\NetBeansProjects\\ComputerComponentsShop\\shopDB.db";
        System.out.println(url);
    }
    //conection
    public void connect() throws ClassNotFoundException{
        try{

            try {
              Class.forName("org.sqlite.JDBC").newInstance();
            } catch (Exception ex) {
              System.err.println("no se pudo cargar jbdc");
            }

            connect = DriverManager.getConnection("JDBC:sqlite:" + url);
            if (connect != null) {
                System.out.println("conectado");
            }
        }catch(SQLException ex) {
            System.err.println("no se ha podido conectar a la base de datos" + ex.getMessage());
        }
    }

    public void close(){
        try {
            connect.close();
            System.out.println("cerrado");
        } catch (SQLException ex) {
            Logger.getLogger(Conector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //product control
    public void addProduct(Product product){
        try {


            PreparedStatement st = connect.prepareStatement("insert into products (name, description, score, image, price, type) values (?,?,?,?,?,?)");
            st.setString(1, product.getName());
            st.setString(2, product.getDescription());
            st.setDouble(3, product.getScore());
            st.setString(4, product.getImage());
            st.setDouble(5, product.getPrice());
            st.setString(6, product.getType());
            st.execute();


            PreparedStatement st1 = connect.prepareStatement("select last_insert_rowid()");
            ResultSet result = st1.executeQuery();

            product.setId(result.getInt(1));

            PreparedStatement st2 = connect.prepareStatement("insert into stock (id, ammount) values (?,?)");
            st2.setInt(1, product.getId());
            st2.setInt(2, 0);
            st2.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }


    }

    public void removeProduct(int id){
        try {
            PreparedStatement st = connect.prepareStatement("delete from stock WHERE id = " + id);
            st.execute();
                              st = connect.prepareStatement("delete from products WHERE id = " + id);
            st.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }

    public Product getProductByID(int aid){
        ResultSet result = null;
        Product product = null;
        try {
            PreparedStatement st = connect.prepareStatement("select * from products where id = " + aid);
            result = st.executeQuery();
            while (result.next()) {

                int id = result.getInt("id");

                String name = result.getString("name");

                String description = result.getString("description");

                String image = result.getString("image");

                String type = result.getString("price");

                double price = result.getDouble("type");

                product = new Product(name, description, image, type, price);
                product.setId(id);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        return product;
        
    }

    //Stock control
    public void increaseStock(int id, int q){
        try {

            PreparedStatement st = connect.prepareStatement("UPDATE stock SET ammount = ammount + "+ q +" WHERE id = " + id);
            st.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }


    }

    public void reduceStock(int id, int q){
        try {

            PreparedStatement st = connect.prepareStatement("UPDATE stock SET ammount = ammount - "+ q +" WHERE id = " + id);
            st.execute();

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }


    }

    public int getAmmountByID(int aid){
        ResultSet result = null;
        try {
            PreparedStatement st = connect.prepareStatement("select * from stock where id = " + aid);
            result = st.executeQuery();
            while (result.next()) {

                return result.getInt("ammount");
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }

        return -1;
        
    }

    //misc
    public void showProducts(){
        ResultSet result = null;
        try {
            PreparedStatement st = connect.prepareStatement("select * from products");
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

            PreparedStatement st = connect.prepareStatement("delete from stock;");
            st.execute();
                              st = connect.prepareStatement("delete from products;");
            st.execute();
                              st = connect.prepareStatement("DELETE FROM SQLITE_SEQUENCE WHERE name='products';");
            st.execute();   

        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }



}



