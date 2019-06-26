package com.demo.demoapi.items;

public class Item {
    private String name;
    private double qty;

    public Item(String name, double qty) {
        this.name = name;
        this.qty = qty;
    }
    public Item(){

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getQty() {
        return qty;
    }

    public void setQty(double qty) {
        this.qty = qty;
    }
}
