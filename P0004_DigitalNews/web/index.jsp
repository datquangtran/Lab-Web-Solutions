<%-- 
    Document   : index
    Created on : May 23, 2019, 3:11:26 PM
    Author     : Mi Mi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Digital News</title>
        <link rel="stylesheet" type="text/css" href="css/index.css"
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
                    <h2>${article.header}</h2>
                    <img class="article_img" src="${article.image}" alt="article_img"/>
                    <p>${article.content}</p>
                    
                    <div class="article_detail">
                        <p>By ${article.author} | ${article.time} </p>
                    </div>
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
