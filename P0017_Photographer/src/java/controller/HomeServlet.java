/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import context.DBContext;
import dao.PhotoDao;
import dao.ViewDao;
import entity.Galery;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/** 
 *
 * @author asus
 */
public class HomeServlet extends HttpServlet {

    /** 
     * processRequest method<br>
     * <pre>
     * load top 3 galery in header
     * load image galery
     * load contact info
     * paging list galery
     * </pre>
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            PhotoDao photoDao = new PhotoDao();
            //set defaul display 3 view galery
            int pageSize = 3;
            //get pageIndex from url
            String pageIndex = request.getParameter("index");
            int index = 0;
            //check pageIndex null
            if (pageIndex != null) {
                try {
                    //convert string to int
                    index = Integer.parseInt(pageIndex);
                } catch (Exception e) {
                    //if can't convert set error
                    request.setAttribute("error", "This page is invalid!!");
                }
            } else {
                //when view fisrt page set default index = 1
                index = 1;
            }
            //count total result in db
            int totalRecord = photoDao.count();
            //if db don't have data set error
            if (totalRecord <= 0) {
                request.setAttribute("error", "No result!!");
            }
            //start paging
            int maxPage = totalRecord / pageSize;
            if ((totalRecord % pageSize) != 0) {
                maxPage++;
            }
            //get list galery with paging 
            List<Galery> galeryList = photoDao.getListGaleryWithPaging(index, pageSize);
            request.setAttribute("listGalery", galeryList);
            request.setAttribute("index", index);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("totalRecord", totalRecord);
            //end paging
            //get top 3 galery in header
            request.setAttribute("top3", photoDao.getTop3Galery());
            //get contact infor
            request.setAttribute("contact", photoDao.getContact());
            request.setAttribute("active", "0");
            //begin setview
            ViewDao vDao = new ViewDao();
            int viewHome = vDao.getViewHome();
            if(request.getSession().isNew()){
                viewHome++;
                vDao.setViewHome(viewHome);
                
            }
            request.setAttribute("viewHome", viewHome);
            //end set view
            request.getRequestDispatcher("HomePage.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", ex);
            request.getRequestDispatcher("Error.jsp").forward(request, response);
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
