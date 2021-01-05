package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import model.Article;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Mi Mi
 */
public class ArticleDAO {

    public ArticleDAO() {
    }

//    get 5 most recent news
    public List<Article> getFiveRecentNews() throws Exception {
        List<Article> atcList = new ArrayList();
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select top 5 * from Article order by time DESC";
            db = new DBContext();
            String imgLink = db.getImage();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd yyyy - hh:mm aa");
            while (rs.next()) {
                int id = rs.getInt("id");
                String header = rs.getString("Title");
                String description = rs.getString("SortDescription");
                String content = rs.getString("LongDescription");
                String author = rs.getString("Author");
                String time = dateFormat.format(rs.getTimestamp("Time"));
                String image = imgLink + rs.getString("imglink");
                Article article = new Article(id, header, description, content, author, time, image);
                atcList.add(article);
            }
        } finally {
            db.close(conn, ps, rs);
        }
        return atcList;
    }

//    get article's detail by id
    public Article getArticleByID(int id) throws Exception {
        Article atc = null;
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select * from Article where id = " + id;
            db = new DBContext();
            String imgLink = db.getImage();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd yyyy - hh:mm aa");
            while (rs.next()) {
                String header = rs.getString("Title");
                String description = rs.getString("SortDescription");
                String content = rs.getString("LongDescription");
                String author = rs.getString("Author");
                String time = dateFormat.format(rs.getTimestamp("Time"));
                String image = imgLink + rs.getString("imglink");
                atc = new Article(id, header, description, content, author, time, image);
            }
        } finally {
            db.close(conn, ps, rs);
        }
        return atc;
    }

//    get numbers of all searching record 
    public int getTotalSearch(String search) throws Exception {
        int total = 0;
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String sql = "select COUNT(*) as total from Article where Title like '%" + search + "%'";
            db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt("total");
            }
        } finally {
            db.close(conn, ps, rs);
        }
        return total;
    }
    
//    search and pagging
    public List<Article> searchArticles(String search, int searchPage, int sizePage) throws Exception {
        List<Article> atcList = new ArrayList<>();
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            int to = searchPage * sizePage;
            int from = to - sizePage + 1;
            String sql = "select * from "
                    + "(select ROW_NUMBER() over(order by Time desc) as row, * FROM Article "
                    + "where Title like ? ) as t "
                    + "where row between ? and ?";
            db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ps.setInt(2, from);
            ps.setInt(3, to);
            rs = ps.executeQuery();
            String imgLink = db.getImage();
            SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd yyyy - hh:mm aa");
            while (rs.next()) {
                int id = rs.getInt("id");
                String header = rs.getString("Title");
                String description = rs.getString("SortDescription");
                String content = rs.getString("LongDescription");
                String author = rs.getString("Author");
                String time = dateFormat.format(rs.getTimestamp("Time"));
                String image = imgLink + rs.getString("imglink");
                Article atc = new Article(id, header, description, content, author, time, image);
                atcList.add(atc);
            }
        } finally {
            db.close(conn, ps, rs);
        }
        return atcList;
    }
}
