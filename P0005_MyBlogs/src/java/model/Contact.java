/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Mi Mi
 */
public class Contact {
    String name, email, phone, company, message;

    public Contact() {
    }

    public Contact(String name, String email, String phone, String company, String message) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.company = company;
        this.message = message;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "Contact{" + "name=" + name + ", email=" + email + ", phone=" + phone + ", company=" + company + ", message=" + message + '}';
    }
    
}
