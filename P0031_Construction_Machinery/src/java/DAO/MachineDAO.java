
package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Post;


public class MachineDAO {
        
    public List<Post> getAllMachines() throws Exception{
        List machinesList = new ArrayList();
        String sql = "select top 6 * from Posts where id > 1 order by id asc";
        DBContext db = null;
        Connection con = null;
        ResultSet rs = null;
        try {
            db = new DBContext();
            String imgFolder = db.getFolderImage();
            con = db.getConnection();
            rs = con.prepareStatement(sql).executeQuery();
            while(rs.next()){
                int id = rs.getInt("Id");
                String name = rs.getString("Name");
                String description = rs.getString("Description");
                String information = rs.getString("Information");
                boolean sale = rs.getBoolean("Sale");
                String image = imgFolder + rs.getString("Image");
                Post p = new Post(id, name, description, information, sale, image);
                machinesList.add(p);
            }
        } finally {
            db.close(con, null, rs);
        }
        return machinesList;
    }
    
    public Post getPostbyID(int id) throws Exception{
        Post post = null;
        String sql = "select * from Posts where id = ?";
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            db = new DBContext();
            String imgFolder = db.getFolderImage();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {   
                String name = rs.getString("Name");
                String description = rs.getString("Description");
                String information = rs.getString("Information");
                boolean sale = rs.getBoolean("Sale");
                String image = imgFolder + rs.getString("Image");
                post = new Post(id, name, description, information, sale, image);
            }
        }finally{
            db.close(con, ps, rs);
        }
        return post;
    }
    
    public List<Post> getSaleMachines() throws Exception{
        List machinesList = new ArrayList();
        String sql = "select * from Posts where id > 1 and Sale = 1";
        DBContext db = null;
        Connection con = null;
        ResultSet rs = null;
        try {
            db = new DBContext();
            String imgFolder = db.getFolderImage();
            con = db.getConnection();
            rs = con.prepareStatement(sql).executeQuery();
            while(rs.next()){
                int id = rs.getInt("Id");
                String name = rs.getString("Name");
                String description = rs.getString("Description");
                String information = rs.getString("Information");
                boolean sale = rs.getBoolean("Sale");
                String image = imgFolder + rs.getString("Image");
                Post p = new Post(id, name, description, information, sale, image);
                machinesList.add(p);
            }
        } finally {
            db.close(con, null, rs);
        }
        return machinesList;
    }
    
}
