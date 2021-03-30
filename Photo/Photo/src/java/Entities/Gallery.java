/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

/**
 *
 * @author Thaovphe130635 <your.name at your.org>
 */
public class Gallery {
    private int id;
    private String name;
    private String description;
    private int view;
    private String firstImageURL;
    
    public Gallery() {
    }

    public Gallery(int id, String name, String description, int view, String firstImageURL) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.view = view;
        this.firstImageURL = firstImageURL;
    }

    public String getFirstImageURL() {
        return firstImageURL;
    }

    public void setFirstImageURL(String firstImageURL) {
        this.firstImageURL = firstImageURL;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    @Override
    public String toString() {
        return "\nGallery{" + "id=" + id + ", name=" + name + ", description=" + description + ", view=" + view + ", firstImageURL=" + firstImageURL + '}';
    }

}
