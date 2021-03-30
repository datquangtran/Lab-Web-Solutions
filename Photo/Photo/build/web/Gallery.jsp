<%-- 
    Document   : Gallery
    Created on : Mar 1, 2021, 9:35:31 PM
    Author     : Thaovphe130635 <your.name at your.org>
    Purpose    : To display gallery of website
--%>

<%@page import="Entities.Images"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Gallery</title>
        <style>
            .image-slide{
                display: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <jsp:include page="component/nav.jsp"></jsp:include>
            <jsp:include page="component/header.jsp"></jsp:include>
                <div class="main flex-container">
                    <div class="left">
                        <div>
                            <div class="image-slide-origin" onclick="changeImage()">
                                <img class="pause" src="img/pause.png" alt=""/>
                            </div>
                            <div class="image-slide-first">
                                <img src="img/${requestScope.imageList[0]}" alt=""/>
                        </div>
                    </div>
                    <c:forEach items="${requestScope.imageList}" var="i">
                        <div class="image-slide">
                            <img src="img/${i.imgURL}" alt=""/>
                        </div>
                    </c:forEach>

                    <div class="flex-container col">
                        <c:forEach items="${requestScope.imageList}" var="i">
                            <div class="row galleryShort">
                                <img src="img/${i.imgURL}" alt=""/>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="pagging">
                        <c:forEach begin="1" end="${requestScope.endPage}" var="i">
                            <a href="GalleryController?index=${i}&id=${requestScope.id}">${i}</a>
                        </c:forEach>
                    </div>
                </div>
                <jsp:include page="component/right.jsp"></jsp:include>
                </div>
            <jsp:include page="component/footer.jsp"></jsp:include>
        </div>
        <script>
            var slideIndex = 0;
            function changeImage() {
                var origin = document.getElementsByClassName("image-slide-origin");
                var first = document.getElementsByClassName("image-slide-first");
                var slides = document.getElementsByClassName("image-slide");
                origin[0].style.display = "none";
                first[0].style.display = "none";

                for (var i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1;
                }
                slides[slideIndex - 1].style.display = "block";

                setTimeout(changeImage, 2000);
            }
        </script>
    </body>
</html>
