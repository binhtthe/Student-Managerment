<%-- 
    Document   : studentmarkupdate
    Created on : Oct 22, 2021, 5:10:08 PM
    Author     : My Computer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THPT Thạch Thất</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
            .form-control{
                width: 30%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        Student : <input disabled="disabled" class="form-control" value="${requestScope.studentcourse.student.studentCode}">
        Course : <input disabled="disabled" class="form-control" value="${requestScope.studentcourse.course.courseCode}">
        Exam Type : <input disabled="disabled" class="form-control" value="${requestScope.mark.exam_type}">
        
        
        <form action="/ThachThatSchool/student-mark-update" method="POST">
            <input type="hidden" name="classindex" value="${requestScope.classindex}">
            <input type="hidden" name="studentindex" value="${requestScope.studentindex}">
            <input type="hidden" name="no" value="${requestScope.mark.no}">
            <c:if test="${requestScope.studentcourse.course.type == 2}">
            <label for="mark"> Mark :</label>
            <input type="number" id="mark" name="mark" step="0.01" value="${requestScope.mark.score}" min="0" max="10" class="form-control">
            </c:if>
            <c:if test="${!requestScope.studentcourse.course.type != 2}">
                <input type="radio" name="mark" id="pass" value="-1" ${requestScope.mark.score eq -1 ? "checked='checked'" : ""}> <label for="pass">Pass </label>
                <input type="radio" name="mark" id="notpass" value="-2" ${requestScope.mark.score eq -2 ? "checked='checked'" : ""}> <label for="notpass">Not Pass</label>
            </c:if>
            <button class="btn btn-primary">Save changes</button>
        </form>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
