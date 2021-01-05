<%-- 
    Document   : category
    Created on : Jun 11, 2019, 3:09:19 PM
    Author     : Mi Mi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="css/category.css">
        <title>My Blogs</title>
    </head>
    <body>
        <div class="container">

            <!--header menu-->
            <div class="header spc_font">
                <p>my blogs</p>
            </div>
            <div class="menubar spc_font">
                <a href="Home">Home</a>
                <a href="Contact">Contact</a>
            </div>

            <!--content page-->
            <div class="content">

                <!--category content-->
                <div class="category">
                    <c:if test="${empty categoryArticles}">
                        <h1><em>Category ${categoryName}</em></h1>
                        <h3>Not found any article</h3>
                    </c:if>

                    <c:if test="${not empty categoryArticles}">
                        <h1><em>Category ${categoryName}</em></h1>
                        <c:forEach var="atc" items="${categoryArticles}">
                            <div>
                                <a href="Home?id=${atc.getId()}"><p>${atc.getTitle()}</p></a>
                                <i>Posted on ${atc.getDate()}</i>
                            </div>
                        </c:forEach>
                        <c:if test="${totalPage > 1}">
                            <c:forEach var="page" begin="1" step="1" end="${totalPage}">
                                <c:if test="${articlePage == page}">
                                    <span>
                                        &nbsp;<u>${page}</u>
                                    </span>
                                </c:if>
                                <c:if test="${articlePage != page}">
                                    <span>
                                        &nbsp;<a href="Category?name=${categoryName}&page=${page}">${page}</a>
                                    </span>
                                    
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </c:if>
                </div>
                <!--category-->
                <div class="right_side">
                    <p class="spc_font">Categories</p>
                    <ul>
                        <c:forEach var="ctg" items="${categoryList}">
                            <li><a href="Category?name=${ctg.getCategory()}">${ctg.getCategory()}</a></li>
                            </c:forEach>
                    </ul>
                </div>
                
                <div class="clear"></div>
            </div>
            
            <!--top 3 recent-->
            <div class="footer">
                <ul>
                    <c:forEach var="atc" items="${top3article}">
                        <li><a href="Home?id=${atc.getId()}">${atc.getTitle()}</a><i> Posted on ${atc.getDate()}</i></li>
                            </c:forEach>
                </ul>
            </div>

        </div>
    </body>
</html>
