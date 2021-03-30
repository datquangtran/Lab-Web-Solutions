<%-- 
    Document   : right
    Created on : Mar 1, 2021, 8:39:20 PM
    Author     : Thaovphe130635 <your.name at your.org>
    Purpose    : To display right of page in order to reuse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <jsp:useBean id="t" class="dal.DAO" scope="request"/>
    </head>
    <body>
        <div class="right">
            <h3 class="share">Share this page</h3>
            <ul class="list-unstyled">
                <li>
                    <img src="img/facebook_icon.png" alt=""/>
                    <a href="${t.contactInformation.facebook_url}">Share on Facebook</a>
                </li>
                <li>
                    <img src="img/twitter_icon.png" alt=""/>
                    <a href="${t.contactInformation.twitter_url}">Share on Twitter</a>
                </li>
                <li>
                    <img src="img/google_icon.png" alt=""/>
                    <a href="${t.contactInformation.google_url}">Share on Google</a>
                </li>
            </ul>
        </div>
    </body>
</html>
