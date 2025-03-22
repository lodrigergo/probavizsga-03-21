/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package realestate;

/**
 *
 * @author lodrigergo
 */
public class Seller {
    private int id;
    private String name;
    private String phone;
  

    public Seller(int id, String name, String phone) {
        this.id = id;
        this.name = name;
        this.phone = phone;
       
    }
    
    @Override
    public String toString() {
        return "Seller{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
