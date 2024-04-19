/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin;

import DAO.AbstractAccountDAO;
import DAO.AbstractNewsDAO;
import DAO.AccountDAO;
import DAO.NewsDAO;
import Login.BaseAuthorization;
import Model.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author My Computer
 */
@WebServlet(name = "AdminHomeController", urlPatterns = {"/admin-home"})
public class HomeController extends BaseAuthorization {
    private final AbstractNewsDAO newsDAO;
    private final AbstractAccountDAO accountDAO;
    public HomeController(){
        newsDAO = new NewsDAO();
        accountDAO = new AccountDAO();
    }

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            request.getSession().removeAttribute("account");
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (!cookie.getName().equals("JSESSIONID")) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
            response.sendRedirect("/ThachThatSchool/login");
        } else {
            HttpSession session = request.getSession();
            Account account = (Account) session.getAttribute("account");
            accountDAO.getGroupOfNews(account);
            request.getRequestDispatcher("view/admin/home.jsp").forward(request, response);
        }
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
