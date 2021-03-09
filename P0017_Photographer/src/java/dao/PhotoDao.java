/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Contact;
import entity.Galery;
import entity.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author asus
 */
public class PhotoDao {

    public PhotoDao() {
    }

    /**
     * --------------------GALERY query--------------------------------
     */
    /**
     * getTop3Galery method
     * <pre> get top 3 galery to display in header </pre>
     *
     * @return
     * @throws Exception
     */
    public List<Galery> getTop3Galery() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Galery> listGalery = new ArrayList<>();
        try {
            String query = "SELECT TOP 3 * FROM galery";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            rs = pr.executeQuery();
            while (rs.next()) {
                //pass data from database that match with colum
                Galery galery = new Galery();
                galery.setID(rs.getInt("ID"));
                galery.setTitle(rs.getString("title"));
                galery.setDescription(rs.getString("description"));
                galery.setName(rs.getString("name"));
                listGalery.add(galery);
            }

        } catch (ClassNotFoundException | SQLException ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return listGalery;
    }

    /**
     * getGaleryByID method
     * <pre>get galery by id</pre>
     *
     * @return
     * @throws Exception
     */
    public Galery getGaleryByID(int id) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT TOP 1 * FROM galery WHERE ID = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            rs = pr.executeQuery();
            while (rs.next()) {
                //pass data from database that match with colum
                Galery galery = new Galery();
                galery.setID(rs.getInt("ID"));
                galery.setTitle(rs.getString("title"));
                galery.setDescription(rs.getString("description"));
                galery.setName(rs.getString("name"));
                galery.setViews(rs.getInt("views"));
                return galery;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return null;
    }

    /**
     * count method
     * <pre>get list galery with paging</pre>
     *
     * @return
     * @throws Exception
     */
    public List<Galery> getListGaleryWithPaging(int pageIndex, int pageSize) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Galery> list = new ArrayList<>();
        int size = count();
        try {
            /*
             *select each row number order by id asc from galery call as RN
             (ROW_NUMBER(): gán một con số tăng tuần tự cho mỗi bản ghi theo thứ tự của id, bắt đầu từ 1)
             *Get data from RN between:
             * (pageSize*pageIndex - pageSize -1)  - pageSize * pageIndex
             *ex:
             page 1: list of records from RN 1 -> 3   ( pageIndex = 1 , pageSize=3)
             page 2: list of records from RN 4 -> 6 ( pageIndex = 2 , pageSize=3)
             page 3: list of records from RN 7 -> 9 ( pageIndex = 3 , pageSize=3)           
             */
            String query = "SELECT * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY id ASC) AS rn , * FROM  galery )"
                    + "AS b WHERE rn BETWEEN ((?*?) - ?)and (?*?)";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, pageSize);
            pr.setInt(2, pageIndex);
            pr.setInt(3, pageSize - 1);
            pr.setInt(4, pageSize);
            pr.setInt(5, pageIndex);
            rs = pr.executeQuery();
            while (rs.next()) {
                //pass data from database that match with colum
                Galery galery = new Galery();
                galery.setID(rs.getInt("ID"));
                galery.setTitle(rs.getString("title"));
                galery.setDescription(rs.getString("description"));
                galery.setName(rs.getString("name"));
                galery.setViews(rs.getInt("views"));
                list.add(galery);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return list;
    }

    /**
     * count method
     * <pre>count number of record</pre>
     *
     * @return
     * @throws Exception
     */
    public int count() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT COUNT(*) FROM galery";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            rs = pr.executeQuery();
            int cout = 0;
            while (rs.next()) {
                cout = rs.getInt(1);
            }
            return cout;
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
    }
    /**
     * --------------------Contact query--------------------------------
     */
    /**
     * getContact method
     * <pre>get contact info</pre>
     *
     * @return
     * @throws Exception
     */
    public Contact getContact() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Galery> listGalery = new ArrayList<>();
        try {
            String query = "SELECT TOP 1 * FROM contact";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            rs = pr.executeQuery();
            while (rs.next()) {
                //pass data from database that match with colum
                Contact contact = new Contact();
                contact.setTelephone(rs.getString("telephone"));
                contact.setEmail(rs.getString("email"));
                contact.setFace_url(rs.getString("face_url"));
                contact.setTwitter_url(rs.getString("twitter_url"));
                contact.setGoogle_url(rs.getString("google_url"));
                contact.setAbout(rs.getString("about"));
                contact.setAddress(rs.getString("address"));
                contact.setCity(rs.getString("city"));
                contact.setCountry(rs.getString("country"));
                contact.setMap_url(rs.getString("map_url"));
                contact.setImage_main(rs.getString("image_main"));
                contact.setIcon_face(rs.getString("icon_face"));
                contact.setIcon_twitter(rs.getString("icon_twitter"));
                contact.setIcon_google(rs.getString("icon_google"));
                return contact;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return null;
    }
    /**
     * --------------------Image query--------------------------------
     */
    /**
     * countImage method
     * <pre>count number image of galery</pre>
     *
     * @return
     * @throws Exception
     */
    public int countImage(int id) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT COUNT(*) FROM image WHERE galery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            rs = pr.executeQuery();
            int cout = 0;
            while (rs.next()) {
                cout = rs.getInt(1);
            }
            return cout;
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
    }

    /**
     * getImageByGaleryID method
     * <pre>get image path by galery_id</pre>
     *
     * @return
     * @throws Exception
     */
    public String getImageByGaleryID(int id) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT TOP 1 image_url FROM image\n"
                    + "WHERE galery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            rs = pr.executeQuery();
            while (rs.next()) {
                return db.getImagePath() + rs.getString(1);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return null;
    }

    /**
     * getListImageWithPaging method
     * <pre>get list image with paging</pre>
     *
     * @return
     * @throws Exception
     */
    public List<Image> getListImageWithPaging(int galeryID, int pageIndex, int pageSize) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        List<Image> list = new ArrayList<>();
        int size = countImage(galeryID);
        try {
            /*
             *select each row number order by id asc from galery call as RN
             *Get data from RN between:
             * (pageSize*pageIndex - pageSize -1)  - pageSize * pageIndex
             *ex: 
             page 1: list of records from RN 1 -> 8   ( pageIndex = 1 , pageSize=8)
             page 2: list of records from RN 9 -> 16 ( pageIndex = 2 , pageSize=8)
             page 3: list of records from RN 17 -> 24 ( pageIndex = 3 , pageSize=8)           
             */
            String query = "SELECT * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY id ASC) AS rn ,"
                    + " * FROM  image WHERE galery_id = ?) "
                    + " AS b WHERE rn BETWEEN"
                    + " ((?*?) - ?) and (?*?)";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, galeryID);
            pr.setInt(2, pageSize);
            pr.setInt(3, pageIndex);
            pr.setInt(4, pageSize - 1);
            pr.setInt(5, pageSize);
            pr.setInt(6, pageIndex);
            rs = pr.executeQuery();
            while (rs.next()) {
                //pass data from database that match with colum
                Image image = new Image();
                image.setId(rs.getInt("ID"));
                image.setGalery_id(rs.getInt("galery_id"));
                image.setImage_url(rs.getString("image_url"));
                list.add(image);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return list;
    }

    /**
     * getImageID method
     * <pre>get image by id</pre>
     *
     * @return
     * @throws Exception
     */
    public Image getImageID(int id, int galeryId) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT * FROM image WHERE id = ? AND galery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, id);
            pr.setInt(2, galeryId);
            rs = pr.executeQuery();
            while (rs.next()) {
                //pass data from database that match with colum
                Image image = new Image();
                image.setId(rs.getInt("ID"));
                image.setGalery_id(rs.getInt("galery_id"));
                image.setImage_url(rs.getString("image_url"));
                return image;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return null;
    }

    /**
     * getTop1ImageGalery method
     * <pre>get top 1 imgae of galery by galery_id</pre>
     *
     * @return
     * @throws Exception
     */
    public Image getTop1ImageGalery(int galeryID) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            String query = "SELECT TOP 1 * FROM image WHERE galery_id = ?";
            conn = db.getConnection();
            pr = conn.prepareStatement(query);
            pr.setInt(1, galeryID);
            rs = pr.executeQuery();
            while (rs.next()) {
                //pass data from database that match with colum
                Image image = new Image();
                image.setId(rs.getInt("ID"));
                image.setGalery_id(rs.getInt("galery_id"));
                image.setImage_url(rs.getString("image_url"));
                return image;
            }

        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(rs, pr, conn);
        }
        return null;
    }
}
