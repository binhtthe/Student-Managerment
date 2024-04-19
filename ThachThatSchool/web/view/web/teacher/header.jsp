<%-- 
    Document   : header
    Created on : Oct 16, 2021, 10:15:21 PM
    Author     : My Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THPT Thạch Thất</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <style>
            
            .navbar{
                height: 60px;
                font-size: 23px; 
                margin-bottom: 40px;
                width: 100%;
                
            }
            .navbar-inverse {
                background-color: #005a73;
                border: none;
                border-radius: 0 !important;
            }
            .img-rounded{
                width: 100%;
                height: 200px;
                border-radius: 0 !important;
            }
            .navbar-nav, .navbar-header, .navbar-brand {
                height: 60px;
                font-size: 20px;
            }
            
        </style>
    </head>
    <body>
        <header>
            <img src="/ThachThatSchool/view/img/header_thach_that.jpg" class="img-rounded">
            <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">TT</a>
                </div>
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/ThachThatSchool/teacher-home">
                        <span class="glyphicon glyphicon-home"></span>    Home
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/ThachThatSchool/teacher-home?action=logout">
                            <span class="glyphicon glyphicon-log-out"></span>Logout
                        </a>
                    </li>
                    <li>
                        <a href="/ThachThatSchool/teacher-detail">
                            <span class="glyphicon glyphicon-user"></span>Info
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        </header>
    </body>
</html>
