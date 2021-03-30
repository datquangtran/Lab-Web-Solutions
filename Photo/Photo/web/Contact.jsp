<%-- 
    Document   : Contact
    Created on : Mar 1, 2021, 8:41:30 PM
    Author     : Thaovphe130635 <your.name at your.org>
    Purpose    : To display contact of website
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <jsp:useBean id="t" class="dal.DAO" scope="request"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="component/nav.jsp"></jsp:include>
            <jsp:include page="component/header.jsp"></jsp:include>
                <div class="main flex-container">
                    <div class="left">
                        <h2>Contact</h2>
                        <h1>PHOTOGRAPHER</h1>
                        <p>Address: ${t.contactInformation.address}</p>
                    <p>City: ${t.contactInformation.city}</p>
                    <p>Country:${t.contactInformation.country}</p>
                    <h7>Tel:${t.contactInformation.telephone}</h7>
                    <p>Email: ${t.contactInformation.email}</p>
                    <img src="img/map.png" alt=""/>
                </div>
                <jsp:include page="component/right.jsp"></jsp:include>
                </div>
            <jsp:include page="component/footer.jsp"></jsp:include>
        </div>
    </body>
</html>
