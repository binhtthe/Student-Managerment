/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.department;

import DAO.AbstractDepartmentDAO;
import DAO.AbstractTeacherDAO;
import DAO.DepartmentDAO;
import DAO.TeacherDAO;
import Login.BaseAuthorization;
import Model.Department;
import Model.Teacher;
import com.google.gson.Gson;
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
@WebServlet(name = "DepartmentUpdateController", urlPatterns = {"/admin-department-update"})
public class DepartmentUpdateController extends BaseAuthorization {
    private final AbstractTeacherDAO teacherDAO;
    private final AbstractDepartmentDAO departmentDAO;
    public DepartmentUpdateController(){
        teacherDAO = new TeacherDAO();
        departmentDAO = new DepartmentDAO();
    }
    

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Teacher> teachers = teacherDAO.getAll();
        Gson gson = new Gson();
        response.getWriter().print(gson.toJson(teachers));
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String deanCode = request.getParameter("dean");
        String departmentCode = request.getParameter("departmentCode");
        Department department = new Department();
        department.setDepartmentCode(departmentCode);
        Teacher dean = new Teacher();
        dean.setTeacherCode(deanCode);
        department.setDean(dean);
        departmentDAO.update(department);
    }


}
