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
public class Images {
    private int id;
    private int galleryID;
    private String imgURL;

    public Images() {
    }

    public Images(int id, int galleryID, String imgURL) {
        this.id = id;
        this.galleryID = galleryID;
        this.imgURL = imgURL;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getGalleryID() {
        return galleryID;
    }

    public void setGalleryID(int galleryID) {
        this.galleryID = galleryID;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    @Override
    public String toString() {
        return this.imgURL;
    }
    
}
