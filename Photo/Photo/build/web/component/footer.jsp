<%-- 
    Document   : footer
    Created on : Mar 1, 2021, 8:38:18 PM
    Author     : Thaovphe130635 <your.name at your.org>
    Purpose    : To display footer of page in order to reuse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="p" class="dal.PageViewDAO" scope="request"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="footer flex-container">
            <div><a href="#">Created with SimpleSite</a></div>
            <div><p class="view">${p.pageView}<p></div>
        </div>
    </body>
</html>
