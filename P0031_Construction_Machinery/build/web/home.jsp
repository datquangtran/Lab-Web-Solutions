<%-- 
    Document   : index
    Created on : Jun 19, 2019, 10:31:54 AM
    Author     : MiMi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link rel="stylesheet" type="text/css" href="css/header.css">
        <link rel="stylesheet" type="text/css" href="css/right_content.css">
        <link rel="stylesheet" type="text/css" href="css/footer.css">
        <title>Construction Machinery</title>
    </head>
    <body>
        <div class="container">
            
            <!--header container-->
            <%@include file="elementJSP/header.jsp" %>
                        
            <!--content of page-->
            <div class="content">
                
                <!--content details-->
                <div>
                    <div class="left_content">
                        <div>
                            <div class="left_inner">
                                <h3>${homePost.getName()}</h3>
                                <h4>${homePost.getDescription()}</h4>
                                <p>${homePost.getInformation()}</p>
                                <img src="${homePost.getImage()}"/>
                                <div class="border_dotted"></div>
                            </div>
                        </div>
                        
                        <div>    

                            <c:forEach var="i" step="1" begin="0" end="${row}">
                                <div class="left_inner">
                                    <c:forEach var="j" step="1" begin="${i*3}" end="${i*3+2}">
                                        <div class="mc_detail" >
                                            <img src="${machineList.get(j).getImage()}"/>
                                            <h5><a href="Machine?id=${machineList.get(j).getId()}"><u>${machineList.get(j).getName()}</u></a></h5>
                                            <p>${machineList.get(j).getDescription()}</p>
                                        </div>
                                    </c:forEach>

                                    <c:if test="${i != row}">
                                        <div class="border_dotted"></div>
                                    </c:if>
                                </div>
                            </c:forEach>

                        </div>
                        <div class="clear"></div>
                    </div>

                    <!--right content-->
                    <%@include file="elementJSP/right_menu.jsp" %>
                    
                    <!--clear float-->
                    <div class="clear"></div>
                    
                </div><!--end content detail-->
                
                <!--footer-->
                <%@include file="elementJSP/footer.jsp" %>
            </div>
        </div>
    </body>
</html>
