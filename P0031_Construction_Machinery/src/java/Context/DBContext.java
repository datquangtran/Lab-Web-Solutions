package Context;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.Context;
import javax.naming.InitialContext;

/**
 *
 * @author NGHIADUC
 */
public class DBContext {
    InitialContext initial;
    Context context;
    String databaseName;
    String hostName;
    String portNumber;
    String folderImage;

    public DBContext() throws Exception{
        initial = new InitialContext();
        context = (Context) initial.lookup("java:comp/env");
        hostName = context.lookup("hostName").toString();
        portNumber = context.lookup("portNumber").toString();
        databaseName = context.lookup("databaseName").toString();
        folderImage = context.lookup("image").toString();
    }
    
    
    public Connection getConnection() throws Exception{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String winAuth = "jdbc:sqlserver://" + hostName + ":" + portNumber
                + ";databaseName=" + databaseName + ";integratedSecurity=true";
        return DriverManager.getConnection(winAuth);
    }
    
    public String getFolderImage() throws Exception{
        return folderImage;
    }
    
    public void close(Connection con, PreparedStatement ps, ResultSet rs) throws Exception{
        if(rs != null && !rs.isClosed()) rs.close();
        if(ps != null && !ps.isClosed()) ps.close();
        if(con != null && !con.isClosed()) con.close();
    }
}
