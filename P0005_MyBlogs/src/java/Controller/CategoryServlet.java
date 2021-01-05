/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ArticleDAO;
import DAO.CategoryDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Article;
import model.Category;

/**
 *
 * @author Mi Mi
 */
public class CategoryServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            ArticleDAO atcDAO = new ArticleDAO();
            List<Category> categoryList = new CategoryDAO().getAllCategory();
            List<Article> top3article = atcDAO.getTop3Artcile();
            
            String category = request.getParameter("name");
            String atcPage = request.getParameter("page");
            if(category == null) category = "Art" ;
            if(atcPage == null) atcPage = "1";
            int articlePage = Integer.valueOf(atcPage);
            int sizePage = 2;
            int totalArticle = atcDAO.getTotalNumbersArticle(category);
            int totalPage = (int) Math.ceil( (double) totalArticle / sizePage);
            List<Article> categoryArticles = atcDAO.getArticleByCategory(category, articlePage, sizePage);
            
            request.setAttribute("categoryArticles", categoryArticles);
            request.setAttribute("categoryName", category);
            request.setAttribute("categoryList", categoryList);
            request.setAttribute("top3article", top3article);
            request.setAttribute("totalPage", totalPage);
            request.setAttribute("articlePage", articlePage);
            request.getRequestDispatcher("category.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
