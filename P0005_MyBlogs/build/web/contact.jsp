<%-- 
    Document   : contact
    Created on : Jun 10, 2019, 10:25:35 PM
    Author     : Mi Mi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="css/contact.css">
        <title>My Blogs</title>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <p >my blogs</p>
            </div>
            <div class="menubar">
                <a  href="Home">Home</a>
                <a  href="Contact">Contact</a>
            </div>
            <div class="content">
                <div class="contact_box">
                    <div>
                        <p>${Notification}</p>
                    </div>
                    <form method="post" onsubmit="return validateForm()" action="Contact">
                        <fieldset>
                            <legend>All field are required</legend>
                            <div class="row_contact">
                                <div class="elm_one">Name:</div>
                                <div class="elm_two">
                                    <input name="name" id="name" type="text" required/>
                                </div>
                                <div class="elm_one">Email:</div>
                                <div class="elm_two">
                                    <input name="email" id="email" type="text" required/>
                                </div>
                                <div class="elm_one">Phone:</div>
                                <div class="elm_two">
                                    <input name="phone" id="phone" type="text" required/>
                                </div>
                                <div class="elm_one">Company:</div>
                                <div class="elm_two">
                                    <input name="company" id="company" type="text" required/>
                                </div>
                                <div class="elm_one">Message:</div>
                                <div class="elm_two">
                                    <textarea name="message" id="message" type="text" required></textarea>
                                </div>
                                <div class="clear"></div>
                                <button type="submit">send</button>
                                <div class="clear"></div>
                            </div>
                        </fieldset>
                    </form>
                </div>

                <div class="right_side">
                    <p  >Categories</p>
                    <ul>
                        <c:forEach var="ctg" items="${ctgList}">
                            <li><a href="Category?name=${ctg.getCategory()}">${ctg.getCategory()}</a></li>
                            </c:forEach>
                    </ul>
                </div>

                <div class="clear"></div>
            </div>

        </div>

        <script type="text/javascript" src="javaScript/validate.js"></script>
    </body>
</html>
