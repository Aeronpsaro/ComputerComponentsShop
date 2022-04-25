package model;

public interface Product {

    public default int getID() {return -1;};
    public float getPrice();
    public String getName();
    public default int getAmmount() {return 0;};
    public void setAmmount(int ammount);
    public default String getDescription() {return "";};
    public default Class getType() {
        return this.getClass();
    };
    public String getImageURL();
    public default String getBrand() {return "ACME";};
    public default double getScore() {return 0;};
    public void setId(int id);
}

