/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import dao.PhotoDao;

/**
 *
 * @author asus
 */
public class Galery {

    private int ID;
    private String title;
    private String description;
    private String name;
    private String image;
    private int views;

    public Galery() {
    }

    public Galery(int ID, String title, String description) {
        this.ID = ID;
        this.title = title;
        this.description = description;
    }

    public Galery(int ID, String title, String description, String name, String image, int views) {
        this.ID = ID;
        this.title = title;
        this.description = description;
        this.name = name;
        this.image = image;
        this.views = views;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public String getImage() throws Exception {
        PhotoDao dao = new PhotoDao();
        return dao.getImageByGaleryID(ID);
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Galery{" + "ID=" + ID + ", title=" + title + ", description=" + description + '}';
    }

}
