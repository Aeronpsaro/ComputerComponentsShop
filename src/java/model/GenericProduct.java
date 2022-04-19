/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Usuario
 */
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

    public int getId() {
        return id;
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

    public double getPrice() {
        return price;
    }

    public double getScore() {
        return score;
    }

    public String getBrand() {
        return brand;
    }



}
