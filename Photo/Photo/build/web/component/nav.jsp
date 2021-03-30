<%-- 
    Document   : nav
    Created on : Mar 1, 2021, 8:36:20 PM
    Author     : Thaovphe130635 <your.name at your.org>
    Purpose    : To display nav of page in order to reuse
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="t" class="dal.DAO" scope="request"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="nav-bar">
            <a href="../Contact.jsp"></a>
            <div class="nav-item"><a class="nav" href="home">My front page</a></div>
            <c:forEach items="${t.galleryList}" var="i">
                <div class="nav-item"><a class="nav" href="GalleryController?&
                   view=${i.view}&id=${i.id}&index=1">${i.name}</a></div>
            </c:forEach>
            <div class="nav-item"><a class="nav" href="contact">Contact</a></div>
        </div>
    </body>
</html>
