<%-- 
    Document   : search
    Created on : May 27, 2019, 9:23:48 PM
    Author     : Mi Mi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Digital News</title>
        <link rel="stylesheet" type="text/css" href="css/index.css" />
    </head>
    <body>
        <div class="container">
            <div>
                <div class="preheader"></div>
            
                <div class="header">
                    <p><b>My Digital News</b></p>
                </div>

                <div class="menu">
                    <p><b>News</b></p>
                </div>
            </div>

            <div class="content">
                <div class="article">
                    <c:if test="${empty searchList}">
                        <h2>Not found "${searchKey}" in any article</h2>
                    </c:if>
                    <c:if test="${not empty searchList}">
                        <c:forEach var="atc" items="${searchList}">
                            <h2><a href="Article?id=${atc.id}">${atc.header}</a></h2>
                            <p><img class="article_img" src="${atc.image}" alt="article_img"/></p>
                            <p>${atc.description}</p>

                            <div class="article_detail">
                                <p>By ${atc.author} | ${atc.time} </p>
                            </div>
                        </c:forEach>
                        <c:if test="${totalPage > 1}">
                            <c:forEach var="page" begin="1" step="1" end="${totalPage}">
                                <c:if test="${searchPage == page}">
                                    |<a href="Search?search=${searchKey}&page=${page}">
                                        <span><u>${page}</u> </span>
                                    </a>
                                </c:if>
                                <c:if test="${searchPage != page}">
                                    |<a href="Search?search=${searchKey}&page=${page}">
                                        <span>${page} </span>
                                    </a>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </c:if>
                </div>

                <div class="right_side">

                    <div>
                        <h2>Digital News</h2>
                        <p>${mostRecentNew}</p>
                    </div>

                    <div>
                        <h2>Search</h2>
                        <form method="post" action="Search">
                            <input type="text" name="search" required="">
                            <button type="submit">Go</button>
                        </form>
                    </div>

                    <div>
                        <h2>Last Articles</h2>
                        <c:forEach var="atc" items="${top5News}">
                            <p><a href="Article?id=${atc.id}">${atc.header}</a></p>
                        </c:forEach>
                    </div>
                    
                </div>
                
                <div class="clear"></div>
            </div>
            
            <div class="footer"></div>
        </div>
    </body>
</html>
