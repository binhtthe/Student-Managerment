/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.News;

import DAO.AbstractGroupDAO;
import DAO.AbstractNewsDAO;
import DAO.GroupDAO;
import DAO.NewsDAO;
import Login.BaseAuthorization;
import Model.Account;
import Model.Group;
import Model.GroupNews;
import Model.News;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
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
@WebServlet(name = "NewsAddController", urlPatterns = {"/admin-news-add"})
public class NewsAddController extends BaseAuthorization {
    private final AbstractNewsDAO newsDAO;
    private final AbstractGroupDAO groupDAO;
    
    public NewsAddController (){
        newsDAO = new NewsDAO();
        groupDAO = new GroupDAO();
    }

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Group> groups = groupDAO.getAll();
        request.setAttribute("groups", groups);
        request.getRequestDispatcher("view/admin/news/newsadd.jsp").forward(request, response);
    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String groups = request.getParameter("groups");
        Calendar currentDate = Calendar.getInstance();
        Date postedDate = new java.sql.Date(currentDate.getTime().getTime());
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        News news = new News(title, content, postedDate, account);
        String[] groups_split = groups.split("[,]");
        Group group;
        GroupNews groupnews;
        news.setGroupnews(new ArrayList<>());
        for(String gr : groups_split){
            group = new Group();
            group.setGid(Integer.parseInt(gr));
            groupnews = new GroupNews();
            groupnews.setGroup(group);
            groupnews.setNews(news);
            news.getGroupnews().add(groupnews);
        }
        newsDAO.insert(news);
    }



}
