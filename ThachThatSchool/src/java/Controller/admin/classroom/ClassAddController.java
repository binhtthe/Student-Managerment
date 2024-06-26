/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.classroom;

import DAO.AbstractClassRoomDAO;
import DAO.AbstractDepartmentDAO;
import DAO.ClassRoomDAO;
import DAO.DepartmentDAO;
import Login.BaseAuthorization;
import Model.ClassRoom;
import Model.Department;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author My Computer
 */
@WebServlet(name = "ClassAddController", urlPatterns = {"/admin-class-add"})
public class ClassAddController extends BaseAuthorization {
    private final AbstractClassRoomDAO classroomDAO;
    private final AbstractDepartmentDAO departmentDAO;
    public ClassAddController(){
        classroomDAO = new ClassRoomDAO();
        departmentDAO = new DepartmentDAO();
    }
    

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Department> departments = departmentDAO.getAll();
        request.setAttribute("departments", departments);
        request.getRequestDispatcher("view/admin/class/classadd.jsp").forward(request, response);
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String classcode = request.getParameter("classcode");
        String departmentcode = request.getParameter("departmentcode");
        
        ClassRoom classroom = new ClassRoom();
        Department department = new Department();
        department.setDepartmentCode(departmentcode);
        classroom.setDepartment(department);
        classroom.setClassCode(classcode);
        classroomDAO.insert(classroom);
        response.sendRedirect("admin-class-list");
    }


}
