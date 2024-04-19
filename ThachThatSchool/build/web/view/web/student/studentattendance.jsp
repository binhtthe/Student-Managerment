<%-- 
    Document   : studentclasslist
    Created on : Oct 23, 2021, 5:55:24 PM
    Author     : My Computer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THPT Thạch Thất</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <c:set var="classindex" value="1"></c:set>
        <table class="table table-bordered">
            <tr>
                <td>CLASS</td>
                <td>Course</td>
            </tr>
            <c:forEach items="${sessionScope.student.classes}" var="classVariable">
                <tr>
                    <td>
                        Class : ${classVariable.classroom.classCode} - Main Teacher : ${classVariable.homeroomTeacher.teacherCode} <br/>
                        FROM : ${classVariable.startDate} -  TO : ${classVariable.endDate} - Year : ${classVariable.year} - Semester : ${classVariable.semester}
                    </td>
                    <td>
                        <c:set var="courseindex" value="1"></c:set>
                        <ul>
                        <c:forEach items="${classVariable.courses}" var="course">
                            <li>
                                <form action="/ThachThatSchool/student-attendance" method="POST">
                                    <input type="hidden" name="classindex" value="${classindex}">
                                    <input type="hidden" name="courseindex" value="${courseindex}">
                                    ${course.courseName}  | 
                                    <button class="btn btn-primary">Detail</button>
                                </form>
                            </li>
                            <c:set var="courseindex" value="${courseindex + 1}"></c:set>
                        </c:forEach>
                        </ul>    
                    </td>
                </tr>
                <c:set var="classindex" value="${classindex + 1}"></c:set>
            </c:forEach>
                
        </table>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
