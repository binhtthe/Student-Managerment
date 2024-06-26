/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.Teacher;

import DAO.AbstractAccountDAO;
import DAO.AbstractTeacherDAO;
import DAO.AccountDAO;
import DAO.TeacherDAO;
import Login.BaseAuthorization;
import Model.Teacher;
import com.google.gson.Gson;
import java.io.IOException;
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
@WebServlet(name = "TeacherCheckAddController", urlPatterns = {"/admin-teacher-check-add"})
public class TeacherCheckAddController extends HttpServlet {
    private final AbstractTeacherDAO teacherDAO;
    public TeacherCheckAddController(){
        teacherDAO = new TeacherDAO();
    }
    
    private String toJSONObject (String name,String json){
        return "{\""+name+"\" : "+json+"}";
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Teacher> teachers = teacherDAO.getAll();
        Gson jsonifier = new Gson();
        String teachersToJSON = jsonifier.toJson(teachers);
        String toArrObjectJSON = toJSONObject("teachers",teachersToJSON);
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Methods","GET");
        response.getWriter().print(teachersToJSON);
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
    public void doGet(HttpServletRequest request, HttpServletResponse response)
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
    public void doPost(HttpServletRequest request, HttpServletResponse response)
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
