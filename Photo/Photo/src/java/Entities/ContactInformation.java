/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

/**
 * @author Thaovphe130635 <your.name at your.org>
 * @purpose create entities for object
 * @date 9/3/2021
 */
public class ContactInformation {
    private int telephone;
    private String email;
    private String facebook_url;
    private String google_url;
    private String twitter_url;
    private String about;
    private String address;
    private String city;
    private String country;
    private String main_img;

    public ContactInformation() {
    }
    
 /**
     * @author Thaovphe130635
     * @purpose constructor of contact
     * @date 2/3/2021
     */
    public ContactInformation(int telephone, String email, String facebook_url, String google_url, String twitter_url, String about, String address, String city, String country, String main_img) {
        this.telephone = telephone;
        this.email = email;
        this.facebook_url = facebook_url;
        this.google_url = google_url;
        this.twitter_url = twitter_url;
        this.about = about;
        this.address = address;
        this.city = city;
        this.country = country;
        this.main_img = main_img;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity telephone of object
     * @date 2/3/2021
     */
    public int getTelephone() {
        return telephone;
    }

     /**
     * @author Thaovphe130635
     * @purpose set entity telephone of object
     * @date 2/3/2021
     */
    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity email of object
     * @date 2/3/2021
     */
    public String getEmail() {
        return email;
    }

     /**
     * @author Thaovphe130635
     * @purpose set entity email of object
     * @date 2/3/2021
     */
    public void setEmail(String email) {
        this.email = email;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity facebook_url of object
     * @date 2/3/2021
     */
    public String getFacebook_url() {
        return facebook_url;
    }

     /**
     * @author Thaovphe130635
     * @purpose set entity facebook_url of object
     * @date 2/3/2021
     */
    public void setFacebook_url(String facebook_url) {
        this.facebook_url = facebook_url;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity google_url of object
     * @date 2/3/2021
     */
    public String getGoogle_url() {
        return google_url;
    }

     /**
     * @author Thaovphe130635
     * @purpose set entity google_url of object
     * @date 2/3/2021
     */
    public void setGoogle_url(String google_url) {
        this.google_url = google_url;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public String getTwitter_url() {
        return twitter_url;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public void setTwitter_url(String twitter_url) {
        this.twitter_url = twitter_url;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public String getAbout() {
        return about;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public void setAbout(String about) {
        this.about = about;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public String getAddress() {
        return address;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public void setAddress(String address) {
        this.address = address;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public String getCity() {
        return city;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public void setCity(String city) {
        this.city = city;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public String getCountry() {
        return country;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public void setCountry(String country) {
        this.country = country;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public String getMain_img() {
        return main_img;
    }

     /**
     * @author Thaovphe130635
     * @purpose get entity view of object
     * @date 2/3/2021
     */
    public void setMain_img(String main_img) {
        this.main_img = main_img;
    }
    
    
}
