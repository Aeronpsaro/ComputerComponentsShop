/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Usuario
 */
public class Product {
    int id;
    String name;
    String description;
    String image;
    String type;
    double price;
    double score;

    public Product(String name, String description, String image, String type, double price) {
        this.id = -1;
        this.name = name;
        this.description = description;
        this.image = image;
        this.type = type;
        this.price = price;
        this.score = 0.0;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getImage() {
        return image;
    }

    public String getType() {
        return type;
    }

    public double getPrice() {
        return price;
    }

    public double getScore() {
        return score;
    }





}
