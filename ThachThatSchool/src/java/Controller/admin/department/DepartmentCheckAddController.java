/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.department;

import DAO.AbstractDepartmentDAO;
import DAO.DepartmentDAO;
import Login.BaseAuthorization;
import Model.Department;
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
@WebServlet(name = "DepartmentCheckAddController", urlPatterns = {"/admin-department-check-add"})
public class DepartmentCheckAddController extends BaseAuthorization {
    private final AbstractDepartmentDAO departmentDAO;
    
    public DepartmentCheckAddController(){
        departmentDAO = new DepartmentDAO();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Department> departments = departmentDAO.getAll();
        Gson gson = new Gson();
        response.getWriter().print(gson.toJson(departments));
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
