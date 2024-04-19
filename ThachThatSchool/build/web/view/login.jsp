<%-- 
    Document   : login
    Created on : Sep 25, 2021, 10:52:04 PM
    Author     : My Computer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THPT Thạch Thất</title>
        <!-- Latest compiled and minified CSS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <style>
            .form-control{
                width: 90%;
                margin-bottom: 10px;
            }
            .logincontainer{
                padding: 30px;
                margin: 50px auto 0;
                font-size: 20px;
                border: 1px solid #ccc;
                width: 50%;
                border-radius: 8px;
            }
            body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .logincontainer {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        .form-group {
            margin: 15px 0;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #alert {
            color: red;
            font-weight: bold;
            margin: 10px 0;
        }

        .form-check {
            margin: 10px 0;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }
        
            .img-rounded{
                width: 100%;
                height: 160px;
            }
            footer{
                margin-top: 93px; 
                text-align: right;
                background-color: #b7e5fc;
                height: 60px;
                border-radius: 5px;
                font-size: 15px;
                font-family: Arial,sans-serif;
            }
            
            .loginfail{
                color : red;
                font-weight: bold;
            }
            
            .form-select, .form-btn {
                font-size: 16px;
                height: 40px;
                padding: 4px 8px;
                border-radius: 8px; 
                margin-left: 8px;
            }
            
            .form-btn {
                display: block;
                margin-left: 0;
                margin-top: 20px;
            }
            
            
        </style>
        <script>
             function doLogin(){
                 $("#alert").empty();
                 var username = $("#username").val();
                 var password = $("#password").val();
                 var role = $("#role").val();
                 var remember = "";
                 if(typeof $("input[type='checkbox']:checked").val() !== "undefined"){
                     remember = $("input[type='checkbox']:checked").val();
                 }
                 $.ajax({
                    url : "/ThachThatSchool/login",
                    type : "POST",
                    data : {
                        username : username,
                        password : password,
                        role : role,
                        remember : remember
                    },
                    success : function(response){
                        if(response.length === 0){
                            $("#alert").append("<span class='loginfail'>LOGIN FAIL</span>");
                        }else{
                            window.location = "/ThachThatSchool/login";
                        }
                    }
                 }); 
                 
                 
             }
        </script>
    </head>
    <body>
<!--        <img class="img-rounded" src="/ThachThatSchool/view/img/header_thach_that.jpg" alt="header">-->
        <div class="logincontainer">
            <div class="form-group">
                <label for="username">Username : </label> 
                <input type="text" name="username" id="username" pattern="[a-z0-9]{2,}" class="form-control"><br>
            </div>
            <div class="form-group">
                <label for="password" >Password : </label>
                <input type="password" id="password" name="password" pattern="[a-z0-9]{2,}" class="form-control"><br>
            </div>
            <div id="alert"></div>
            <div class="form-check">
                <input type="checkbox" id="remember" name="remember" checked class="form-check-input" value="true">
                <label for="remember" class="form-check-label"> Remember me </label>
            </div><br/>
            <label for="role">Select: </label>
            <select name="role" class="form-select" id="role">
                <c:forEach items="${requestScope.groups}" var="group">
                    <c:if test="${group.gid != 3}">
                        <option value="${group.gid}">
                            ${group.gname}
                        </option>
                    </c:if>
                </c:forEach>
            </select>
            
        <button type="submit" class="btn btn-primary form-btn" onclick="doLogin()">
             <span class="glyphicon glyphicon-log-in"></span>       Login
        </button> 
        </div>
        
    </body>
</html>
