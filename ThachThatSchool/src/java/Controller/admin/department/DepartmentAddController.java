/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.department;

import DAO.AbstractTeacherDAO;
import DAO.TeacherDAO;
import Login.BaseAuthorization;
import Model.Teacher;
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
@WebServlet(name = "DepartmentAddController", urlPatterns = {"/admin-department-add"})
public class DepartmentAddController extends BaseAuthorization {
    private final AbstractTeacherDAO teacherDAO;
    
    public DepartmentAddController(){
        teacherDAO = new TeacherDAO();
    }
    
    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Teacher> teachers = teacherDAO.getAll();
        request.setAttribute("teachers", teachers);
        request.getRequestDispatcher("view/admin/department/departmentadd.jsp").forward(request, response);
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


}
