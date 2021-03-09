/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.PhotoDao;
import dao.ViewDao;
import entity.Galery;
import entity.Image;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
public class GaLeryServlet extends HttpServlet {

    /**
     * processRequest method<br>
     * <pre>
     * load top 3 galery in header
     * load image galery
     * load contact info
     * paging image galery
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
            ViewDao vDao = new ViewDao();
            //get parameter from url
            String galeryID = request.getParameter("galeryID");
            String imgID = request.getParameter("imgID");
            boolean invalid = true;
            boolean indexValid = true;
            int galeryId = 0;
            //check galery id
            try {
                if (galeryID != null) {
                    //convert string to int
                    galeryId = Integer.parseInt(galeryID);
                } else {
                    // set default galery id
                    galeryId = 1;
                }
            } catch (Exception e) {
                //when String cant' convert to int -> set error
                request.setAttribute("error", "This galery is invalid!!");
                invalid = false;
            }
            if (invalid == true) {
                //set default display 8 image
                int pageSize = 8;
                //count total result 
                int totalRecord = photoDao.countImage(galeryId);
                //if db don't have data ->set error
                if (totalRecord <= 0) {
                    request.setAttribute("error", "No image in galery!!");
                }
                int maxPage = totalRecord / pageSize;
                if ((totalRecord % pageSize) != 0) {
                    maxPage++;
                }

                //get top 1 image of galery
                int imageID = 0;

                //get parameter pageIndex
                String pageIndex = request.getParameter("index");
                int index = 0;

                //check index page
                try {
                    if (pageIndex != null) {
                        //convert pageIndex from string to int
                        index = Integer.parseInt(pageIndex);
                    } else {
                        //set defaul pageIndex = 1
                        index = 1;
                    }
                } catch (Exception e) {
                    //when String cant' convert to int -> set error
                    request.setAttribute("error", "This page is invalid!!");
                    indexValid = false;
                }
                //check index valid? and index in range 0 < index <= maxPage
                if (indexValid == true && index > 0 && index <= maxPage) {
                    //check image id valid
                    try {
                        if (imgID != null) {
                            //convert imageID from String to int 
                            imageID = Integer.parseInt(imgID);
                        } else {
                            // set default image id
                            imageID = photoDao.getTop1ImageGalery(galeryId).getId();
                        }
                    } catch (Exception e) {
                        //when String cant' convert to int -> set error
                        request.setAttribute("error", "This image not found!!");
                    }
                    // check image in galery is exist in db
                    if (photoDao.getImageID(imageID, galeryId) != null) {
                        request.setAttribute("top1Galery", photoDao.getImageID(imageID, galeryId));
                        request.setAttribute("top1GaleryID", imageID);
                    } else {
                        request.setAttribute("error", "This image not found!!");
                    }
                } else {
                    request.setAttribute("error", "This page is invalid!!");
                }

                try {
                    //get list image with paging 
                    List<Image> imagelList = photoDao.getListImageWithPaging(galeryId, index, pageSize);
                    request.setAttribute("listImage", imagelList);

                } catch (Exception ex) {
                    request.setAttribute("error", "This galery is invalid!!");
                }
                request.setAttribute("index", index);
                request.setAttribute("maxPage", maxPage);
                request.setAttribute("galeryID", galeryId);
                request.setAttribute("totalRecord", totalRecord); 
                Galery g = photoDao.getGaleryByID(galeryId);
                //begin set view galery
                int viewGalery = g.getViews();
                //if(request.getSession().isNew()){
                    viewGalery++;
                    vDao.setViewGalery(galeryId, viewGalery);
                //}
                request.setAttribute("viewGalery",viewGalery);
                request.setAttribute("galery",g);
            }
            //get top 3 galery
            request.setAttribute("top3", photoDao.getTop3Galery());
            //get contact infor
            request.setAttribute("contact", photoDao.getContact());
            request.setAttribute("active", galeryID);
            
            //begin set viewHome
            int viewHome = vDao.getViewHome();
            if (request.getSession().isNew()) {
                viewHome++;
                vDao.setViewHome(viewHome);
            }
            request.setAttribute("viewHome", viewHome);
            //end set viewHome
            request.getRequestDispatcher("Gallery.jsp").forward(request, response);
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
