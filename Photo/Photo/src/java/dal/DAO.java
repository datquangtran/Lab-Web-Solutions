/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import Entities.Gallery;
import Entities.Images;
import Entities.ContactInformation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Thaovphe130635 <your.name at your.org>
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;

    public List<Gallery> getGalleryList() {
        List<Gallery> list = new ArrayList<>();
        try {
            String sSQL = "SELECT *\n"
                    + "FROM Gallery\n"
                    + "ORDER BY gallery_id ASC;";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Gallery d = new Gallery();
                d.setId(rs.getInt("gallery_id"));
                d.setName(rs.getString("galleryName"));
                d.setDescription(rs.getString("description"));
                d.setView(rs.getInt("view"));
                d.setFirstImageURL(getFirstImage(rs.getInt("gallery_id")));
                list.add(d);
            }
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public String getFirstImage(int galleryID) {
        Images d = new Images();
        try {
            String sSQL = "SELECT top 1 *\n"
                    + "FROM Image\n"
                    + "WHERE gallery_id = ?";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ps.setInt(1, galleryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                d.setId(rs.getInt("id"));
                d.setGalleryID(rs.getInt("gallery_id"));
                d.setImgURL(rs.getString("img"));
            }
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return d.getImgURL();
    }

    public ContactInformation getContactInformation() {
        ContactInformation c = new ContactInformation();
        try {
            String sSQL = "SELECT *\n"
                    + "FROM Contact;";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                c.setTelephone(rs.getInt("telephone"));
                c.setEmail(rs.getString("email"));
                c.setFacebook_url(rs.getString("facebook_url"));
                c.setGoogle_url(rs.getString("google_url"));
                c.setTwitter_url(rs.getString("twitter_url"));
                c.setAbout(rs.getString("about"));
                c.setAddress(rs.getString("address"));
                c.setCity(rs.getString("city"));
                c.setCountry(rs.getString("country"));
                c.setMain_img(rs.getString("img_main"));
            }
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }

    public int count(int galleryID) {
        int total = 0;
        try {
            String sSQL = "SELECT COUNT(*)\n"
                    + "FROM Image\n"
                    + "WHERE gallery_id = ?;";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ps.setInt(1, galleryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return total;
    }

    public List<Images> getIndexImages(int index, int galleryID) {
        List<Images> list = new ArrayList<>();
        try {
            String sSQL = "SELECT * FROM\n"
                    + "(SELECT ROW_NUMBER() OVER(ORDER BY id ASC) AS r,\n"
                    + "* FROM Image) AS x\n"
                    + "WHERE r BETWEEN (?*6-5) AND (?*6)\n"
                    + "AND gallery_id = ?";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ps.setInt(1, index);
            ps.setInt(2, index);
            ps.setInt(3, galleryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Images d = new Images();
                d.setId(rs.getInt("id"));
                d.setGalleryID(rs.getInt("gallery_id"));
                d.setImgURL(rs.getString("img"));
                list.add(d);
            }
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void updateGalleryView(int updatedView, int galleryID) {
        try {
            String sSQL = "  UPDATE Gallery\n"
                    + "  SET [view] = ?\n"
                    + "  WHERE gallery_id = ?";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ps.setInt(1, updatedView + 1);
            ps.setInt(1, galleryID);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
