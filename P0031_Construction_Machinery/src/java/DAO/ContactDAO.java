package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import model.Contact;

public class ContactDAO {
    
    public void insertContact(Contact ct) throws Exception{
        String sql = "INSERT INTO Contact VALUES (?,?,?)";
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        try{
            db = new DBContext();
            con = db.getConnection(); 
            ps = con.prepareStatement(sql);
            ps.setString(1, ct.getName());
            ps.setString(2, ct.getEmail());
            ps.setString(3, ct.getMessage());
            ps.execute();
        }finally{
            db.close(con, ps, null);
        }
    }
}
