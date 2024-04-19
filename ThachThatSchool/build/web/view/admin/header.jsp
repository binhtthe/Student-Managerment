<%-- 
    Document   : header
    Created on : Sep 27, 2021, 6:32:12 PM
    Author     : My Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <style>
            
            img{
                height: 80px;
            }

            .left {
                height: 700px;
                float: left;
                width: 30%;
                text-align: left;
                border-right: 3px solid #b7e5fc;
            }

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
                margin-bottom: 5px;
            }
            .img-rounded{
                width: 100%;
                height: 600px;
                border-radius: 0 !important;
              
            }
            .navbar-nav, .navbar-header, .navbar-brand {
                height: 60px;
                font-size: 20px;
            }
            
            
            .fas{
                color: blue;
                font-size: 15px;
            }
            
            
            .side-bar-home {
                display: flex;
                height: 300px;
                gap: 30px;
            }
            
            .side-bar-home-list {
                width: 120px;
                list-style: none;
            }
            
            .side-bar-home-list .list-group {
                display: none;
            }
            
            .side-bar-home-list .list-group li{
                list-style:  none;
                
            }
            .side-bar-home {
    list-style: none;
    padding: 0;
}

.side-bar-home-list {
    margin: 10px 0;
}

.side-bar-home button {
    background-color: #337ab7;
    color: #fff;
    width: 100%; /* Make the button full-width */
}

.side-bar-home button:hover {
    background-color: #23527c;
}

.list-group-item {
    border: none;
    background-color: #f5f5f5;
    display: flex;
    align-items: center;
    justify-content: space-between; /* Align content horizontally */
    padding: 10px;
}

.list-group-item a {
    color: #333;
    text-decoration: none;
}

.list-group-item a:hover {
    color: #23527c;
}

/* Add some margin between list items */
.list-group-item + .list-group-item {
    margin-top: 10px;
    
}

        </style>
        <script src="/ThachThatSchool/view/js/functions.js"></script>
    </head>
    <body>
        <div class="qwe">
             <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div>
                        <div class="navbar-header">
                        <a href="#" class="navbar-brand">TT</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="/ThachThatSchool/admin-home">
                               <span class="glyphicon glyphicon-home"></span>  Home
                            </a>
                        </li>
                    </ul>
                    </div>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/ThachThatSchool/admin-home?action=logout"> <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </div>
            </nav>

        </div>
        <div class="ggg">
            <img src="/ThachThatSchool/view/img/header_thach_that.jpg" class="img-rounded">
        </div>
        <div>
<!--            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div>
                        <div class="navbar-header">
                        <a href="#" class="navbar-brand">TT</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="/ThachThatSchool/admin-home">
                               <span class="glyphicon glyphicon-home"></span>  Home
                            </a>
                        </li>
                    </ul>
                    </div>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/ThachThatSchool/admin-home?action=logout"> <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </div>
            </nav>-->
        <section class="left">
            <ul class="side-bar-home">
                <li class="side-bar-home-list">
                    <div>
                        <button class="btn btn-primary" type="button" onclick="displayElement('list2')">ADD  <span class="caret"></span></button>
                            <ul id="list2" class="list-group">
                           <li> <a href="/ThachThatSchool/admin-student-add" class="list-group-item"><i class="fas fa-plus"></i>  Student</a>  </li>
                            <li>  <a href="/ThachThatSchool/admin-teacher-add" class="list-group-item"><i class="fas fa-plus"></i>  Teacher</a> </li>
                           <li>  <a href="/ThachThatSchool/admin-classyearsemester-add" class="list-group-item"><i class="fas fa-plus"></i>Semester</a> </li>
                            <li>  <a href="/ThachThatSchool/admin-news-add" class="list-group-item"><i class="fas fa-plus"></i>News</a> </li>
<!--                          <li>  <a href="/ThachThatSchool/admin-course-add" class="list-group-item"><i class="fas fa-plus"></i>Course</a> </li>-->
<!--                            <li>  <a href="/ThachThatSchool/admin-department-add" class="list-group-item"><i class="fas fa-plus"></i>Department</a> </li>-->
                            <li>  <a href="/ThachThatSchool/admin-class-add" class="list-group-item"><i class="fas fa-plus"></i>Class</a> </li>
                        </ul>
                    </div>
                </li>
                <li class="side-bar-home-list">
                    <div>
                        <button class="btn btn-primary" type="button" onclick="displayElement('list3')">LIST<span class="caret"></span></button>
                        <ul id="list3" class="list-group">
                            <li>
                                 <a href="/ThachThatSchool/admin-student-list?pageId=1" class="list-group-item"><i class="fas fa-plus"></i>  Student</a>
                              
                            </li>
                            <li>
                                <a href="/ThachThatSchool/admin-teacher-list?pageId=1" class="list-group-item"><i class="fas fa-plus"></i>  Teacher</a>

                            </li>
                            <li>
                                <a href="/ThachThatSchool/admin-news-list?pageId=1" class="list-group-item"><i class="fas fa-plus"></i>News</a>

                            </li>
                                                        <a href="/ThachThatSchool/admin-classyearsemester-list?pageId=1" class="list-group-item"><i class="fas fa-plus"></i>Semester</a>
<!--                                                            <a href="/ThachThatSchool/admin-department-list" class="list-group-item"><i class="fas fa-plus"></i>Department</a>
                              <a href="/ThachThatSchool/admin-class-list" class="list-group-item"><i class="fas fa-plus"></i>Class</a>-->
                        </ul>
                    </div>
                </li>
            </ul>
        </section>
</div>
    </body>
</html>
