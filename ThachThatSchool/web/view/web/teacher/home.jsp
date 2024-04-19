<%-- 
    Document   : home
    Created on : Oct 16, 2021, 9:48:52 PM
    Author     : My Computer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THPT Thạch Thất giáo viên</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <style>
            .body {
                display: flex;
                width: 90%;
                margin: 0 auto;
            }
            .left{
                width: 30%;
                padding: 30px;
            }
            
            .right{
                width: 70%;
                padding: 30px;
            }
            
            .left h2,.right h2{
                margin-top: 16px;
                margin-bottom: 16px;
                text-align: center;
                color: #2677ff;
                letter-spacing: 3px;
                font-weight: bold;
            }
            
            .news{
                border-radius: 10px;
            }
            
            .list-group {
                padding: 0;
            }
            
            .list-group-item {
                width: 100%;
                padding: 12px 20px;
                border: none !important;
                border-top: 1px solid #ddd !important;
            }
            
            .list-group-item a{
                text-decoration: none;
                color: #111;
                cursor: pointer;
                transition: all 0.1s ease-in-out;
            }
            
            .list-group-item a:hover{
                color: #2677ff;
                text-decoration: none;
            }
            
            .fa-newspaper {
                margin-right: 10px;
                color: #005a73;
            }
            
            .fa-plus {
                margin-right: 10px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="body">
            <section class="left">
            <h2>Activities</h2>
            <ul class="list-group">
                <li class="list-group-item">
                    <a href="/ThachThatSchool/teacher-schedule">
                        <i class="fas fa-plus"></i>Lịch giảng dạy hàng tuần
                    </a>
                </li>
                <li class="list-group-item">
                    <a href="/ThachThatSchool/teacher-main-class-list">
                        <i class="fas fa-plus"></i>Chỉnh sửa điểm cho học sinh
                    </a>
                </li>
            </ul>
        </section>
        <section class="right">
            <section class="news">
                    <h2>News</h2>
                    <ul class="list-group">
                        <c:forEach items="${sessionScope.account.group_of_news}" var="news">
                        <li class="list-group-item">
                            <a href="/ThachThatSchool/admin-news-update?no=${news.no}">
                                <i class="fa fa-newspaper"></i>  ${news.title} by ${news.account.username} - ${news.postedDate}  
                            </a>
                        </li>
                    </c:forEach>
                    </ul>
            </section>
        </section>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
