/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import Entities.Images;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Thaovphe130635 <your.name at your.org>
 */
public class PageViewDAO {

    Connection conn = null;
    PreparedStatement ps = null;

    public int getPageView() {
        int pageView = 0;
        try {
            String sSQL = "SELECT * FROM [view]";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pageView = rs.getInt("view");
            }
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pageView;
    }

    public void updatePageView(int updatedView) {
        try {
            String sSQL = "UPDATE [View]\n"
                    + "SET [view] = ?";
            DBContext db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sSQL);
            ps.setInt(1, updatedView + 1);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        PageViewDAO page = new PageViewDAO();
        System.out.println("== " + page.getPageView());
    }

   
}
