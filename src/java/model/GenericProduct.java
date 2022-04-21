package model;

import java.util.Objects;

public class GenericProduct implements Product {

    int id;
    String name;
    String description;
    String image;
    double price;
    double score;
    String brand;
    int ammount;

    public GenericProduct(String name, String description, String image, double price, String brand) {
        this.id = -1;
        this.name = name;
        this.description = description;
        this.image = image;
        this.price = price;
        this.score = 0.0;
        this.brand = brand;   
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setScore(double score) {
            this.score = score;
    }

    public void setAmmount(int ammount) {
        this.ammount = ammount;
    }

    public int getAmmount() {
        return ammount;
    }

    public int getID() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getImageURL() {
        return image;
    }

    public double getPrice() {
        return price;
    }

    public double getScore() {
        return score;
    }

    public String getBrand() {
        return brand;
    }

    @Override
    public int hashCode() {
        return Objects.hash(getPrice(), getName(), getImageURL());
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final TestProduct other = (TestProduct) obj;
        return true;
    }


}
