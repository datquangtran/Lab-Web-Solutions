/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ArticleDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Article;

/**
 *
 * @author Mi Mi
 */
public class SearchServlet extends HttpServlet {

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

            String search = request.getParameter("search");
            List<Article> top5News = atcDAO.getFiveRecentNews();
            Article atcMostRecent = top5News.get(0);

            String sPage = request.getParameter("page");
            int searchPage;
            if (sPage == null) {
                searchPage = 1;
            } else {
                try {
                    searchPage = Integer.valueOf(sPage);
                } catch (NumberFormatException e) {
                    searchPage = Integer.MAX_VALUE;
                }
            }
            int totalSearch = atcDAO.getTotalSearch(search);
            int sizePage = 2;
            int totalPage;
            if (totalSearch % sizePage == 0) {
                totalPage = totalSearch / sizePage;
            } else {
                totalPage = totalSearch / sizePage + 1;
            }

            List<Article> searchList = atcDAO.searchArticles(search, searchPage, sizePage);

            request.setAttribute("mostRecentNew", atcMostRecent.getDescription());
            request.setAttribute("top5News", top5News);
            request.setAttribute("searchKey", search);
            request.setAttribute("searchList", searchList);
            request.setAttribute("searchPage", searchPage);
            request.setAttribute("totalPage", totalPage);
            request.getRequestDispatcher("search.jsp").forward(request, response);
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
