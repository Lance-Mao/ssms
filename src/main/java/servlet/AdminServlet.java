package servlet;

import entity.Admin;
import entity.Stu;
import entity.Tea;
import net.sf.json.JSONArray;
import service.AdminSevice;
import service.StuService;
import service.TeaService;
import service.impl.AdminSeviceImpl;
import service.impl.StuServiceImpl;
import service.impl.TeaServiceImpl;

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
@WebServlet(name = "AdminServlet",urlPatterns = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    private AdminSevice adminSevice = new AdminSeviceImpl();
    private StuService stuService = new StuServiceImpl();
    private TeaService teaService = new TeaServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        System.out.println("1111111111111111111111111111111111111111111");
        String method = req.getParameter("method");
        System.out.println(method);
        if (method.equals("login")) {
            login(req, resp);
        } else if (method.equals("stuInfo")) {
            System.out.println("1111111111111111111111111111111111111111111");
            stu_info_commit(req, resp);
        } else if (method.equals("show_tea_info")) {
            show_tea_info(req, resp);
        } else if (method.equals("alertInfo")) {
            alertInfo(req, resp);
        } else if (method.equals("teaInfo")) {
            teaInfo(req, resp);
        }

    }

    private void teaInfo(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("进入teaInfo");
        String tea_number = req.getParameter("number");
        System.out.println(tea_number);
        String tea_name = req.getParameter("tea_name");
        String password = req.getParameter("password");
        String tea_grade_info = req.getParameter("tea_grade_info");
        String tea_class_info = req.getParameter("tea_class_info");
        String phone = req.getParameter("phone");
        String date = req.getParameter("date");
        String tea_sex = req.getParameter("sex");
        String age = req.getParameter("age");
        String type = "教师";
        Tea tea = new Tea(tea_number,tea_name,tea_sex,Integer.parseInt(age),password,type,phone,tea_class_info,tea_grade_info,date);
        System.out.println(tea);
        teaService.save(tea);
    }

    private void alertInfo(HttpServletRequest req, HttpServletResponse resp) {
        String stu_number = req.getParameter("stu_number");
        List<Map<String, Object>> lifoMap = (List<Map<String, Object>>) stuService.infoMap(stu_number);
    }

    private void show_tea_info(HttpServletRequest req, HttpServletResponse resp) {
        List<Map<String, Object>> stuInfo = stuService.allStuInfo();
        JSONArray jsonArray = JSONArray.fromObject(stuInfo);
        System.out.println("0000000000000000000000000000000000000000000000000");
        try {
            System.out.println(jsonArray);
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void stu_info_commit(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("2222222222222222222222222222222222222222222");
        String stu_number = req.getParameter("number");
        System.out.println(stu_number);
        String stu_name = req.getParameter("stu_name");
        int stu_age = Integer.parseInt(req.getParameter("stu_age"));
        String stu_sex = req.getParameter("sex");
        String stu_class = req.getParameter("stu_class_info");
        String stu_grape = req.getParameter("stu_grade_info");
        String password = req.getParameter("stu_password");
        String phone = req.getParameter("phone");
        String entrance_date = req.getParameter("date");
        String type = "学生";

        System.out.println(stu_age);
        System.out.println(stu_class);
        System.out.println(stu_name);

        Stu stu = new Stu(stu_number, stu_name, stu_age, stu_sex, stu_class, stu_grape, password, phone, entrance_date, type);
        System.out.println(stu);
        stuService.save(stu);
        try {
            resp.sendRedirect("/jsp/admin/stu_info_input.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }



    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String number = req.getParameter("username");
        String s_password = req.getParameter("password");
        Admin admin = new Admin();
        admin.setNumber(number);
        admin.setPassword(s_password);
        System.out.println(number);
        System.out.println(s_password);
        Map<String, Object> mapInfo = adminSevice.infoMap(number);
        req.getSession().setAttribute("adminName",mapInfo.get("name"));
        req.getSession().setAttribute("adminType",mapInfo.get("type"));
        if (adminSevice.login(admin)){
            resp.sendRedirect("/jsp/admin/index.jsp");
        }else {
            req.setAttribute("info","登录失败！请检查用户名与密码！");
            resp.sendRedirect("/jsp/login/login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req, resp);
    }
}
