<%-- 
    Document   : Homepage
    Created on : Feb 28, 2021, 9:20:28 PM
    Author     : Thaovphe130635 <your.name at your.org>
    Purpose    : To display homepage of website
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="t" class="dal.DAO" scope="request"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homepage</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="component/nav.jsp"></jsp:include>
            <jsp:include page="component/header.jsp"></jsp:include>
            <div class="main flex-container">
                <div class="left">
                    <img src="img/1.jpg" alt=""/>
                    <p>Lorem ipsum dolor sit amet</p>
                    <div class="flex-container">
                    <c:forEach items="${t.galleryList}" var="i">
                            <div class="galleryShort">
                                <img src="img/${i.firstImageURL}" alt=""/>
                                <a href="GalleryController?id=${i.id}&view=${i.view}&index=1">${i.name}(View : ${i.view})</a>
                                <p>
                                    ${i.description}
                                </p>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="about-me">
                        <h2>About me</h2>
                        <p>${t.contactInformation.about}</p>
                    </div>
                </div>
            <jsp:include page="component/right.jsp"></jsp:include>
            </div>
            <jsp:include page="component/footer.jsp"></jsp:include>
        </div>
    </body>
</html>
