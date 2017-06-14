package servlet;

import entity.Leave_word;
import entity.Publish_info;
import entity.Stu;
import entity.Sub_credit;
import net.sf.json.JSONArray;
import service.*;
import service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
@WebServlet(name = "StuServlet", urlPatterns = "/StuServlet")
public class StuServlet extends HttpServlet {

    private StuService stuService = new StuServiceImpl();
    private CourseService courseService = new CourseServiceImpl();
    private Publish_infoService publish_infoService = new Publish_infoServiceImpl();
    private Publish_info publish_info = new Publish_info();
    private Sub_credit sub_credit = new Sub_credit();
    private Sub_creditService sub_creditService = new Sub_creditServiceImpl();
    private Leave_word leave_word = new Leave_word();
    private Leave_wordService leave_wordService = new Leave_wordServiceImpl();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String method = req.getParameter("method");
        if (method.equals("login")) {
            login(req, resp);
        } else if (method.equals("showCourse")) {
            showCourse(req, resp);
        } else if (method.equals("showPublish_info")) {
            showPublish_info(req, resp);
        } else if (method.equals("showCourses")) {
            showCourses(req, resp);
        } else if (method.equals("showSubject")) {
            System.out.println("showSubject");
            showSubject(req, resp);
        } else if (method.equals("leave_word")) {
            leave_word(req, resp);
        } else if (method.equals("showLeave_word")) {
            showLeave_word(req, resp);
        }



    }

    private void showLeave_word(HttpServletRequest req, HttpServletResponse resp) {
        List<Map<String, Object>> allLeave_word = leave_wordService.outLeave_word();
        JSONArray jsonArray = JSONArray.fromObject(allLeave_word);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void leave_word(HttpServletRequest req, HttpServletResponse resp) {
        String stu_number = (String) req.getSession().getAttribute("stuNumber");
        String stu_name = (String) req.getSession().getAttribute("stuName");
        String tea_name = req.getParameter("tea_name");
        String leave_word = req.getParameter("content");
        Leave_word leave_word1 = new Leave_word(stu_number, stu_name, leave_word,tea_name);
        leave_wordService.saveLeave_word(leave_word1);
        try {
            resp.sendRedirect(req.getContextPath()+"/jsp/stu/leave_word.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showSubject(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println(789);
        String name = (String) req.getSession().getAttribute("stuName");
        System.out.println(name);
        String number = (String) req.getSession().getAttribute("stuNumber");
        System.out.println(number);
        List<Map<String, Object>> listInfo = courseService.outCourse(name);
        JSONArray jsonArray = JSONArray.fromObject(listInfo);
        System.out.println("222222222222222222222222222222222222222222222222222222222222222222222222222222");
        System.out.println(listInfo);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCourses(HttpServletRequest req, HttpServletResponse resp) {
        String name = (String) req.getSession().getAttribute("stuName");
        List<Map<String,Object>> listInfo = courseService.outCourse(name);
        JSONArray jsonArray = JSONArray.fromObject(listInfo);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showPublish_info(HttpServletRequest req, HttpServletResponse resp) {

        List<Map<String, Object>> listInfo = publish_infoService.outPublish_info();
        JSONArray jsonArray = JSONArray.fromObject(listInfo);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showCourse(HttpServletRequest req, HttpServletResponse resp) {
        String stu_name = (String) req.getSession().getAttribute("stuName");
        List<Map<String, Object>> listCourse = courseService.outCourse(stu_name);
        JSONArray jsonArray = JSONArray.fromObject(listCourse);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String number = req.getParameter("number");
        String s_password = req.getParameter("password");
        Stu stu = new Stu();
        stu.setStu_number(number);
        stu.setPassword(s_password);
        Map<String, Object> mapInfo = stuService.infoMap(number);


        if (stu == null) {
            req.setAttribute("info", "登录失败！用户名与密码不能为空！");
            try {
                resp.sendRedirect(req.getContextPath()+"/jsp/login/login.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            if (stuService.login(stu)) {
                req.getSession().setAttribute("stu",stu);
                req.getSession().setAttribute("stuName", mapInfo.get("stu_name"));
                req.getSession().setAttribute("stuType", mapInfo.get("type"));
                req.getSession().setAttribute("stuNumber",number);
                resp.sendRedirect(req.getContextPath()+"/jsp/stu/index.jsp");
            } else {
                req.getSession().setAttribute("info", "登录失败！请检查用户名与密码！");
                try {
                    resp.sendRedirect(req.getContextPath()+"/jsp/login/login.jsp");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
