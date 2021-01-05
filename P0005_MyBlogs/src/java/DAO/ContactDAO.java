/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import model.Contact;

public class ContactDAO {

    public void insertContact(Contact contact) throws Exception {
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            String sql = "insert into Contact values(?,?,?,?,?)";
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, contact.getName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getPhone());
            ps.setString(4, contact.getCompany());
            ps.setString(5, contact.getMessage());
            ps.execute();
        } finally {
            db.close(con, ps, null);
        }
    }
}
