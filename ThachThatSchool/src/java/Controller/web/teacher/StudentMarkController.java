/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.web.teacher;

import DAO.AbstractClassYearSemesterDAO;
import DAO.AbstractMarkDAO;
import DAO.AbstractStudentDAO;
import DAO.ClassYearSemesterDAO;
import DAO.MarkDAO;
import DAO.StudentDAO;
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
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author My Computer
 */
@WebServlet(name = "StudentMarkController", urlPatterns = {"/student-mark"})
public class StudentMarkController extends BaseAuthorization {

    private final AbstractClassYearSemesterDAO classyearsemesterDAO;
    private final AbstractMarkDAO markDAO;
    private final AbstractStudentDAO studentDAO;

    public StudentMarkController() {
        classyearsemesterDAO = new ClassYearSemesterDAO();
        markDAO = new MarkDAO();
        studentDAO = new StudentDAO();
    }

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        int classindex = Integer.parseInt(request.getParameter("classindex"));
        ClassYearSemester classroom = teacher.getClasses().get(classindex - 1);
        int activitiesExcept = 0;
        classyearsemesterDAO.getCourses(classroom,activitiesExcept);
        int studentindex = Integer.parseInt(request.getParameter("studentindex"));
        Student student = classroom.getStudents().get(studentindex - 1);
        studentDAO.getStudentCourses(student, classroom);
        request.setAttribute("class", classroom);
        request.setAttribute("student", student);
        request.setAttribute("classindex", classindex);
        request.setAttribute("studentindex", studentindex);
        request.getRequestDispatcher("view/web/teacher/studentmark.jsp").forward(request, response);
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int studentindex = Integer.parseInt(request.getParameter("studentindex"));
        int classindex = Integer.parseInt(request.getParameter("classindex"));
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        ClassYearSemester classyearsemester = teacher.getClasses().get(classindex - 1);
        Student student = classyearsemester.getStudents().get(studentindex - 1);

        int type = Integer.parseInt(request.getParameter("type"));
        double score = Double.parseDouble(request.getParameter("mark"));
        String courseCode = request.getParameter("courseCode");
        StudentCourse studentCourse = getStudentCourse(student, courseCode);
        Mark mark = new Mark(0, classyearsemester, score, type);
        int markNo = markDAO.insert(studentCourse, mark);
        if(markNo != 0){
            mark.setNo(markNo);
            studentCourse.getMarks().add(mark);
        }
        response.getWriter().print( (student.getStudentcourses().indexOf(studentCourse) + 1) + " " + mark.getNo() + " "+
            (studentCourse.getMarks().indexOf(mark) + 1)    );
    }
    
    public StudentCourse getStudentCourse(Student student,String courseCode){
        for(StudentCourse studentCourse : student.getStudentcourses()){
            if(studentCourse.getCourse().getCourseCode().equals(courseCode)){
                return studentCourse;
            }
        }
        Course course = new Course();
        course.setCourseCode(courseCode);
        StudentCourse newStudentCourse = new StudentCourse();
        newStudentCourse.setCourse(course);
        newStudentCourse.setStudent(student);
        student.getStudentcourses().add(newStudentCourse);
        return newStudentCourse;
    }

}
