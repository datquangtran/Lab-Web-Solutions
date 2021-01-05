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
        <link rel="stylesheet" type="text/css" href="css/contact.css">
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
                    <div class="contact_detail">
                        <h2>Contact</h2>
                        <h3>Construction Machinery</h3>
                        <div class="element_ct">
                            <span>Address:</span>
                            <span>City:</span>
                            <span>Country:</span>
                        </div>
                        <div class="element_ct">
                            <span>Tel: 123456</span>
                            <span>Email: your-email@your-email.com</span>
                        </div>
                        <hr/>
                        <span>Write your message here. Fill out the form:</span>
                        <form method="post" action="Contact">
                            <div class="contact_form">
                                <div class="elm_one">
                                    <input type="text" id="name" name="name" placeholder="Write your name here" required/>
                                </div>

                                <div class="elm_two">
                                    <input type="text" id="email" name="email" placeholder="Write your email here" required/>
                                </div>
                                <textarea id="message" name="message" placeholder="Write your message here" required></textarea>
                                <button type="submit">Send - Click here</button>
                                <div class="clear"></div>
                            </div>
                        </form>
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
