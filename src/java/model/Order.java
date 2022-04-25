/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author Usuario
 */
public class Order {
    int id;
    int user_id;
    List<Integer> items;
    List<Integer> ammounts;

    public Order(int id, int user_id, List<Integer> items, List<Integer> ammounts) {
        this.id = id;
        this.user_id = user_id;
        this.items = items;
        this.ammounts = ammounts;
    }

    public int getId() {
        return id;
    }

    public int getUser_id() {
        return user_id;
    }

    public List<Integer> getItems() {
        return items;
    }

    public List<Integer> getAmmounts() {
        return ammounts;
    }


}
