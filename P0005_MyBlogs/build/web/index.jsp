<%-- 
    Document   : index
    Created on : Jun 10, 2019, 11:32:28 AM
    Author     : Mi Mi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <title>My Blogs</title>
    </head>
    <body>
        <div class="container">

            <!--header menu-->
            <div class="header">
                <p >my blogs</p>
            </div>
            <div class="menubar">
                <a id="${active == 1 ? 'active' : ''}" href="Home">Home</a>
                <a id="${active == 2 ? 'active' : ''}" href="Contact">Contact</a>
            </div>

            <!--content page-->
            <div class="content">

                <!--article content-->
                <div class="article">
                    <a><em>Category art</em></a><i> - Full Category</i>
                    <p>${rqArticle.getTitle()}</p>
                    <span>
                        <i>Posted on ${rqArticle.getDate()} - </i><em>Full Article</em>
                    </span>
                    <div class="article_content">
                        <img src="${rqArticle.getImage()}"/>
                        <span>
                            ${rqArticle.getContent()}
                        </span>
                    </div>
                </div>


                <div class="right_side">
                    <p >Categories</p>
                    <ul>
                        <c:forEach var="ctg" items="${ctgList}">
                            <li>
                                <a href="Category?name=${ctg.getCategory()}">${ctg.getCategory()}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

                <!--clear float-->
                <div class="clear"></div> 

                <!--top 3 recent in footer-->
                <%@include file="footer.jsp" %>
            </div>

        </div>
    </body>
</html>
