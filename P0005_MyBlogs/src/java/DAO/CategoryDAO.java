package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Category;

public class CategoryDAO {

    public List<Category> getAllCategory() throws Exception {
        List<Category> ctgList = new ArrayList<>();
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            db = new DBContext();
            String sql = "select * from Category";
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String category = rs.getString("Category");
                Category ctr = new Category(category);
                ctgList.add(ctr);
            }
        } finally {
            db.close(con, ps, rs);
        }
        return ctgList;
    }
}
