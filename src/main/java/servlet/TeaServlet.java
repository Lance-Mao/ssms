package servlet;

import entity.Course;
import entity.Publish_info;
import entity.Tea;
import service.CourseService;
import service.Publish_infoService;
import service.TeaService;
import service.impl.CourseServiceImpl;
import service.impl.Publish_infoServiceImpl;
import service.impl.TeaServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
@WebServlet(name = "TeaServlet",urlPatterns = "/TeaServlet")
public class TeaServlet extends HttpServlet {
    private TeaService teaService = new TeaServiceImpl();
    private CourseService courseService = new CourseServiceImpl();
    private Tea tea = new Tea();
    private Publish_infoService publish_infoService = new Publish_infoServiceImpl();
    private Publish_info publish_info = new Publish_info();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String method = req.getParameter("method");

        if (method.equals("login")) {
            login(req, resp);
        } else if (method.equals("course")) {
            course(req, resp);
        } else if (method.equals("publish_info")){
            publish_info(req, resp);
        }

    }

    private void publish_info(HttpServletRequest req, HttpServletResponse resp) {

        System.out.println("33333333333333333333333333333333333333333");
        String msg = req.getParameter("textarea");
        String t_name = (String) req.getSession().getAttribute("teaName");
        System.out.println(msg);
        Object t_number = req.getSession().getAttribute("teaNumber");
        String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        System.out.println(t_number);
        publish_info.setTea_name(t_name);
        publish_info.setTea_number((Integer) t_number);
        publish_info.setTea_msg(msg);
        publish_info.setDate(date);
        System.out.println("2222222222222222222222222222222222");
        publish_infoService.savePublish_info(publish_info);
        System.out.println(msg);
    }

    private void course(HttpServletRequest req, HttpServletResponse resp) {

        String c_name = req.getParameter("c_name");
        float c_score = Integer.parseInt(req.getParameter("c_score"));
        String s_name = req.getParameter("s_name");
        int s_number = Integer.parseInt(req.getParameter("s_number"));
        String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        String t_name = req.getParameter("t_name");
        int t_number = Integer.parseInt(req.getParameter("t_number"));

        Course course = new Course();
        course.setC_name(c_name);
        course.setC_score(c_score);
        course.setDate(date);
        course.setT_name(t_name);
        course.setT_number(t_number);
        course.setS_name(s_name);
        course.setS_number(s_number);
        System.out.println(222222);
        courseService.saveCourse(course);
        System.out.println(course);
        course.setDate(date);
        System.out.println(date);

        System.out.println(c_name);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String number = req.getParameter("username");
        String s_password = req.getParameter("password");
        tea.setTea_number(number);
        tea.setPassword(s_password);
        Map<String, Object> mapInfo = teaService.infoMap(number);
        System.out.println("111111111111111111111111111111111111111111");
        System.out.println(number);
        System.out.println(s_password);

        if (teaService.login(tea)){
            req.getSession().setAttribute("teaName",mapInfo.get("tea_name"));
            req.getSession().setAttribute("teaType",mapInfo.get("type"));
            req.getSession().setAttribute("teaNumber",mapInfo.get("tea_number"));
            req.getSession().setAttribute("tea",tea);
            resp.sendRedirect("/jsp/tea/index.jsp");

        }else {
            req.setAttribute("info","登录失败！请检查用户名与密码！");
            resp.sendRedirect("/jsp/login/login.jsp");
        }
    }

    //登录成功后获取到老师的工号
    public Tea info(Tea tea){
        return tea;
    }
}
