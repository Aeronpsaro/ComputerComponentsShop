package clases;
public interface Producto {
    public default int getID() {return 0;};
    public float getPrice();
    public String getName();
    public default int getAmmount() {return 1;};
    public default String getDescription() {return "";};
    public default Class getType() {
        return this.getClass();
    };
    public default String getImageURL() {
        return null;
    };
    public default String getBrand() {return "ACME";};
    public default int getRating() {return 0;};
}
