package model;

public interface Product {
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
}
