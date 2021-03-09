/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author asus
 */
public class ViewDao {
    /**
     * getViewHome method
     * <pre>get viewHome from home</pre>
     *
     * @return
     * @throws Exception
     */
    public int getViewHome() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            //count digital by title
            String query = " SELECT viewHome FROM home";
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            int views = 0;
            while (rs.next()) {
                views = rs.getInt(1);
            }
            return views;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, ps, conn);
        }
    }
    /**
     * setViewHome method
     * <pre>update viewHome</pre>
     *
     * @return
     * @throws Exception
     */
    public void setViewHome(int views) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            String query = " UPDATE home SET viewHome = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, views);
            ps.execute();
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, ps, conn);
        }
    }
    /**
     * setViewGalery method
     * <pre>update viewGalery</pre>
     *
     * @return
     * @throws Exception
     */
    public void setViewGalery(int id, int views) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DBContext db = new DBContext();
        try {
            conn = db.getConnection();
            String query = " UPDATE galery SET views = ? WHERE ID = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, views);
            ps.setInt(2, id);
            ps.execute();
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, ps, conn);
        }
    }

}
