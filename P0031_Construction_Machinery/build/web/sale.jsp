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
        <link rel="stylesheet" type="text/css" href="css/sale.css">
        <link rel="stylesheet" type="text/css" href="css/header.css">
        <link rel="stylesheet" type="text/css" href="css/right_content.css">
        <link rel="stylesheet" type="text/css" href="css/footer.css">
        <title>Construction Machinery</title>
    </head>
    <body>
        <!--start sheet-->
        <div class="container">
            
            <!--header container-->
            <%@include file="elementJSP/header.jsp" %>
            
            <!--content of page-->
            <div class="content">
                
                <!--content details-->
                <div>
                    <div class="left_content">
                        
                        <div class="sale_detail">
                            <h3>Machines for Sale</h3>
                        </div>
                        
                        <c:forEach var="sale" items="${saleMachines}">
                            <div class="sale_detail">
                                <img src="${sale.getImage()}"/>
                                <a href="Machine?id=${sale.getId()}">${sale.getName()}</a>
                                <p>${sale.getInformation()}</p>
                                <div class="border_dotted"></div>
                            </div>
                        </c:forEach>
                        
                    </div>

                    <!--right content-->
                    <%@include file="elementJSP/right_menu.jsp" %>
                    
                    <!--clear float-->
                    <div class="clear"></div>
                    
                </div><!--end content detail-->
                
                <!--footer-->
                <%@include file="elementJSP/footer.jsp" %>
            </div>
            
        </div>  <!--end of sheet-->
        
    </body>
</html>
