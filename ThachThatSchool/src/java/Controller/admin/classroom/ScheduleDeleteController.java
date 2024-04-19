/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.admin.classroom;

import DAO.AbstractScheduleDAO;
import DAO.ScheduleDAO;
import Login.BaseAuthorization;
import Model.ClassRoom;
import Model.Schedule;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "ScheduleDeleteController", urlPatterns = {"/admin-classyearsemester-schedule-delete"})
public class ScheduleDeleteController extends BaseAuthorization {

    private final AbstractScheduleDAO scheduleDAO;

    public ScheduleDeleteController() {
        scheduleDAO = new ScheduleDAO();
    }

    @Override
    public void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Date date = Date.valueOf(request.getParameter("day"));
        int slot = Integer.parseInt(request.getParameter("slot"));
        String raw_classCode = request.getParameter("classCode");

        Schedule schedule = new Schedule();
        ClassRoom classroom = new ClassRoom();
        classroom.setClassCode(raw_classCode);
        schedule.setClassroom(classroom);
        schedule.setSlot(slot);
        schedule.setDate(date);
        scheduleDAO.delete(schedule);
    }

}
