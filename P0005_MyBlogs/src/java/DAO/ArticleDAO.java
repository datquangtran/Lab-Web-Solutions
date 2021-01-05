package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import model.Article;

public class ArticleDAO {

    public List<Article> getTop3Artcile() throws Exception {
        List<Article> atcList = new ArrayList();
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            db = new DBContext();
            String imgFolder = db.getImage();
            String sql = "select top 3 * from Article order by Date DESC";
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            SimpleDateFormat SDF = new SimpleDateFormat("MMMM dd, YYYY");
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("Title");
                String content = rs.getString("LongContent");
                String image = imgFolder + rs.getString("Image");
                String category = rs.getString("Category");
                String date = SDF.format(rs.getDate("Date"));
                Article artc = new Article(id, title, content, image, category, date);
                atcList.add(artc);
            }
        } finally {
            db.close(con, ps, rs);
        }
        return atcList;
    }

    public Article getArticleByID(int id) throws Exception {
        Article atc = null;
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            db = new DBContext();
            String imgFolder = db.getImage();
            String sql = "select * from Article where id = " + id;
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            SimpleDateFormat SDF = new SimpleDateFormat("MMMM dd, YYYY");
            while (rs.next()) {
                String title = rs.getString("Title");
                String content = rs.getString("LongContent");
                String image = imgFolder + rs.getString("Image");
                String category = rs.getString("Category");
                String date = SDF.format(rs.getDate("Date"));
                atc = new Article(id, title, content, image, category, date);
            }
        } finally {
            db.close(con, ps, rs);
        }
        return atc;
    }

    public List<Article> getArticleByCategory(String category, int articlePage, int sizePage) throws Exception {
        List<Article> atcList = new ArrayList<>();
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            int to = sizePage * articlePage;
            int from = to - sizePage + 1;
            db = new DBContext();
            String imgFolder = db.getImage();
            String sql = "select * from "
                    + "(SELECT ROW_NUMBER() over(order by Date desc) as row, * FROM Article "
                    + "where Category like ?) as t "
                    + "where row between ? and ?;";
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, category);
            ps.setInt(2, from);
            ps.setInt(3, to);
            rs = ps.executeQuery();
            SimpleDateFormat SDF = new SimpleDateFormat("MMMM dd, YYYY");
            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("Title");
                String content = rs.getString("LongContent");
                String image = imgFolder + rs.getString("Image");
                String date = SDF.format(rs.getDate("Date"));
                Article artc = new Article(id, title, content, image, category, date);
                atcList.add(artc);
            }
            atcList.toString();
        } finally {
            db.close(con, ps, rs);
        }
        return atcList;
    }

    public int getTotalNumbersArticle(String category) throws Exception {
        int total = 0;
        DBContext db = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select COUNT(*) as total from Article where Category like '%" + category + "%'";
            db = new DBContext();
            con = db.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt("total");
            }
        } finally {
            db.close(con, ps, rs);
        }
        return total;
    }
}
