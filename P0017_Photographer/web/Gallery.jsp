<%-- 
    Document   : Gallery
    Created on : Feb 25, 2021, 8:43:11 AM
    Author     : asus
--%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/home.css" rel="stylesheet" type="text/css">
        <title>My Front Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="main">
                <div class="left">
                    <div class="about">
                        <h3>${galery.name}</h3>
                        <p class="views">Views: ${viewGalery}</p>
                    </div>
                    <c:if test="${error != null}">
                        <h3 style="margin-bottom: 600px"> ${error}</h3>
                    </c:if>
                    <c:if test="${error == null}">                        
                        <div class="imageGaler">
                            <div class="flex1">
                                <button class="previous" onclick="previous()"> <<< </button>
                            </div>
                            <div class="flex2">
                                <img id="image" class="imageGalery" src="${top1Galery.image_url}" alt="First">
                            </div>  
                            <div class="flex1">
                                <button class="next" onclick="next()"> >>> </button>
                            </div>
                        </div>
                        <div class="contentGalery">

                            <c:if test="${error == null}">
                                <ul >
                                    <c:if test="${index <= maxPage}">
                                        <c:forEach items="${listImage}" var="i" varStatus="loop">
                                            <li class="span4">
                                                <a href="GaLeryServlet?index=${index}&galeryID=${galeryID}&imgID=${i.id}"><img src="${i.image_url}"></a>
                                            </li>
                                        </c:forEach>

                                    </c:if>
                                </ul>

                            </c:if>    
                            <div class="paging">
                                <c:if test="${maxPage > 1}">
                                    <c:forEach begin="1" end="${maxPage}" var="i">
                                        <a class="${i==index?"active":""}" href="GaLeryServlet?index=${i}&galeryID=${galeryID}&imgID=${top1GaleryID}">${i}</a>
                                        <c:set var="index" value="${index}" />
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </c:if>

                </div>
                <div class="right">
                    <jsp:include page="Right.jsp"/>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"/>
        <script type="text/javascript">
            var index = 0;
            //get list image
            var listImage = [
            <c:forEach items="${listImage}" var="i">
                '<c:out value="${i.image_url}" />',
            </c:forEach>
            ];
            
            function next() {
                //giúp lấy index theo vòng tròn. 
                //Ví dụ: index =0 , length=8 = -> (0+1) % 8 = 1
                index = (index + 1) % listImage.length;
                document.getElementById("image").src = listImage[index];

            }
            function previous() {
                if (index == 0) {
                    index = listImage.length;
                }
                
                index = index - 1;
                document.getElementById("image").src = listImage[index];

            }

        </script>
    </body>
</html>
