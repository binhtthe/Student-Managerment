<%-- 
    Document   : code403
    Created on : Nov 24, 2021, 4:45:29 PM
    Author     : My Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Warning</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <style>
            h1{
                text-align: center;
                color: red;
            }
            
            div{
                text-align: center;
            }
            
            .warning-img {
                margin-top: 100px;
                width: 400px;
                height: 400px;
            }
            
        </style>
        <script>
            function doDirection(roleNumber){
                var url = "";
                if(roleNumber === 1){
                    url = "/ThachThatSchool/web-student-home";
                }else if(roleNumber === 2){
                    url = "/ThachThatSchool/teacher-home";
                }else{
                    url = "/ThachThatSchool/admin-home";
                }
                window.location = url;
            }
        </script>
    </head>
    <body>
        <div>
            <img class="warning-img" src="https://ehspro3m.vn/wp-content/uploads/2021/10/khong-phan-su-cam-vao-01.png" alt="warning">
            <h1>Your access is denied!</h1>
        </div>
        <div class='backhome'>
            <c:choose>
            <c:when test="${sessionScope.account.roleNumber eq 1}">
                <button class="btn-primary" onclick="doDirection(1)">Back to student home page</button>
            </c:when>
            <c:when test="${sessionScope.account.roleNumber eq 2}">
                <button class="btn-primary" onclick="doDirection(2)">Back to teacher home page</button>
            </c:when>
            <c:otherwise>
                <button class="btn-primary" onclick="doDirection(4)">Back to admin home page</button>
            </c:otherwise>

        </c:choose>
        </div>
        
    </body>
</html>
