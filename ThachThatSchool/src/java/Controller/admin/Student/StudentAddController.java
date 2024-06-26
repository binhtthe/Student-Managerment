/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.Student;

import DAO.AbstractAccountDAO;
import DAO.AbstractStudentDAO;
import DAO.AccountDAO;
import DAO.StudentDAO;
import Login.BaseAuthorization;
import Model.Account;
import Model.Group;
import Model.Student;
import java.io.IOException;
import java.sql.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author My Computer
 */
@WebServlet(name = "StudentAddController", urlPatterns = {"/admin-student-add"})
public class StudentAddController extends BaseAuthorization {
    private final AbstractStudentDAO studentDAO;
    private final AbstractAccountDAO accountDAO;
    public StudentAddController(){
        studentDAO = new StudentDAO();
        accountDAO = new AccountDAO();
    }

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/admin/student/studentadd.jsp").forward(request, response);
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get user data  //
        String studentCode = request.getParameter("studentCode");
        String studentFullName = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        Date dob = Date.valueOf(request.getParameter("dob"));
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        // get user data //
        int studentGroup = 1;
        Account account = new Account(username,password);
        Group group = new Group();
        group.setGid(studentGroup);
        account.getGroups().add(group);
        Student student = new Student(studentCode, studentFullName , address, dob, email, phone, account);
        studentDAO.insert(student);     // insert new student
        doGet(request, response);
    }

}
