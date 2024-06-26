/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.web.teacher;

import DAO.AbstractMarkDAO;
import DAO.MarkDAO;
import Login.BaseAuthorization;
import Model.ClassRoom;
import Model.ClassYearSemester;
import Model.Course;
import Model.Mark;
import Model.Student;
import Model.StudentCourse;
import Model.Teacher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author My Computer
 */
@WebServlet(name = "StudentMarkUpdateController", urlPatterns = {"/student-mark-update"})
public class StudentMarkUpdateController extends BaseAuthorization {
    private final AbstractMarkDAO markDAO;
    
    public StudentMarkUpdateController(){
        markDAO = new MarkDAO();
    }
    
    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int studentindex = Integer.parseInt(request.getParameter("studentindex"));
        int classindex = Integer.parseInt(request.getParameter("classindex"));
        int studentcourseindex = Integer.parseInt(request.getParameter("studentcourseindex"));
        int markindex = Integer.parseInt(request.getParameter("markindex"));
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassYearSemester teacherclass =  teacher.getClasses().get(classindex - 1);
        Student student = teacherclass.getStudents().get(studentindex - 1);
        StudentCourse studentCourse = student.getStudentcourses().get(studentcourseindex - 1);
        Mark mark = studentCourse.getMarks().get(markindex - 1);
        request.setAttribute("mark", mark);
        request.setAttribute("studentcourse", studentCourse);
        request.setAttribute("classindex", classindex);
        request.setAttribute("studentindex", studentindex);
        request.getRequestDispatcher("view/web/teacher/studentmarkupdate.jsp").forward(request, response);
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StudentCourse studentCourse = new StudentCourse();
        Mark studentMark = new Mark();
        int no = Integer.parseInt(request.getParameter("no"));
        double mark = Double.parseDouble(request.getParameter("mark"));
        studentMark.setNo(no);
        studentMark.setScore(mark);
        markDAO.update(studentMark);
        int studentindex = Integer.parseInt(request.getParameter("studentindex"));
        int classindex = Integer.parseInt(request.getParameter("classindex"));
        response.sendRedirect("student-mark?classindex="+classindex+"&studentindex="+studentindex);
    }


}
