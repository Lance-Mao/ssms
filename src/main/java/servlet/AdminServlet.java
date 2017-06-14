package servlet;

import entity.Admin;
import entity.Course;
import entity.Stu;
import entity.Tea;
import net.sf.json.JSONArray;
import service.AdminSevice;
import service.CourseService;
import service.StuService;
import service.TeaService;
import service.impl.AdminSeviceImpl;
import service.impl.CourseServiceImpl;
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
    private Stu stu = new Stu();
    private Course course = new Course();
    private CourseService courseService = new CourseServiceImpl();
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
        } else if (method.equals("show_stu_info")) {  //显示学生信息
            show_stu_info(req, resp);
        } else if (method.equals("alert_stuInfo")) {  //修改学生信息
            alert_stuInfo(req, resp);
        } else if (method.equals("teaInfo")) {
            teaInfo(req, resp);
        } else if (method.equals("show_tea_info")) { //显示教师信息
            show_tea_info(req, resp);
        } else if (method.equals("del_sruInfo")) {  //删除学生信息
            del_sruInfo(req, resp);
        } else if (method.equals("alert_teaInfo")) {  //修改教师信息
            alert_teaInfo(req, resp);
        } else if (method.equals("findByTeaNumber")) {  //根据教师工号，查询教师所有信息
            findByNumber(req, resp);
        } else if (method.equals("del_teaInfo")) {   //根据教师工号,删除教师信息
            del_teaInfo(req, resp);
        } else if (method.equals("findByStuNumber")) {
            findByStuNumber(req, resp);
        } else if (method.equals("addRelationship")) {
            addRelationship(req, resp);
        } else if (method.equals("showRelationship")) {
            showRelationship(req, resp);
        } else if (method.equals("delRelationship")) {
            delRelationship(req, resp);
        }

    }

    private void delRelationship(HttpServletRequest req, HttpServletResponse resp) {
        String number = req.getParameter("s_number");
        courseService.delRelationship(number);
        System.out.println(number);
    }

    private void showRelationship(HttpServletRequest req, HttpServletResponse resp) {
        List<Map<String, Object>> allRelationship = courseService.outRelationship();
        System.out.println("444444444444444444444444444444444444444444444444444444444");
        System.out.println(allRelationship);
        JSONArray jsonArray = JSONArray.fromObject(allRelationship);
        System.out.println("333333333333333333333333333333333333333333333333333");
        System.out.println(jsonArray);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void addRelationship(HttpServletRequest req, HttpServletResponse resp) {
        String stu_number = req.getParameter("number");
        String stu_name = req.getParameter("stu_name");
        String tea_number = req.getParameter("tea_number");
        String tea_name = req.getParameter("tea_name");
        String c_name = req.getParameter("c_name");
        String credit = req.getParameter("credit");
        System.out.println("显示学分");
        System.out.println(credit);

        Course course = new Course(c_name, tea_name, tea_number, stu_name, stu_number, credit);
        System.out.println(course);
        courseService.saveRelationship(course);

        try {
            resp.sendRedirect(req.getContextPath()+"/jsp/admin/course_info_input.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    private void findByStuNumber(HttpServletRequest req, HttpServletResponse resp) {
        String number = req.getParameter("stu_number");
        Map<String, Object> oneInfo = stuService.infoMap(number);
        JSONArray jsonArray = JSONArray.fromObject(oneInfo);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void del_teaInfo(HttpServletRequest req, HttpServletResponse resp) {
        String number = req.getParameter("tea_number");
        System.out.println(number);
        teaService.delInfo(number);
    }

    private void findByNumber(HttpServletRequest req, HttpServletResponse resp) {
        String number = req.getParameter("tea_number");
        System.out.println(number);
        Map<String, Object> oneInfo =  teaService.infoMap(number);
        JSONArray jsonArray = JSONArray.fromObject(oneInfo);
        try {
            System.out.println(jsonArray);
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void alert_teaInfo(HttpServletRequest req, HttpServletResponse resp) {
        String number = req.getParameter("number");
        String tea_name = req.getParameter("tea_name");
        String password = req.getParameter("password");
        String tea_grade_info = req.getParameter("tea_grade_info");
        String tea_class_info = req.getParameter("tea_class_info");
        String age = req.getParameter("age");
        String phone = req.getParameter("phone");
        String date = req.getParameter("date");
        String sex = req.getParameter("sex");
        String type = "教师";

        Tea tea = new Tea(number,tea_name,sex,Integer.parseInt(age),password,type,phone,tea_class_info,tea_grade_info,date);
        System.out.println(tea);
        teaService.modify(tea);
        try {
            resp.sendRedirect(req.getContextPath()+"/jsp/admin/tea_info_input.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void del_sruInfo(HttpServletRequest req, HttpServletResponse resp) {
        String number = req.getParameter("stu_number");
        stuService.delInfo(number);
        try {
            resp.getWriter().print("/jsp/admin/stu_info_input.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void show_tea_info(HttpServletRequest req, HttpServletResponse resp) {
        List<Map<String,Object>> teaInfo = teaService.info();
        JSONArray jsonArray = JSONArray.fromObject(teaInfo);
        System.out.println(teaInfo);
        try {
            resp.getWriter().print(jsonArray);
        } catch (IOException e) {
            e.printStackTrace();
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
        try {
            resp.sendRedirect(req.getContextPath()+"/jsp/admin/tea_info_input.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void alert_stuInfo(HttpServletRequest req, HttpServletResponse resp) {
        String stu_number = req.getParameter("number");
        String stu_name = req.getParameter("stu_name");
        String password = req.getParameter("password");
        String age = req.getParameter("age");
        String stu_grade_info = req.getParameter("tea_grade_info");
        String stu_class_info = req.getParameter("tea_class_info");
        String phone = req.getParameter("phone");
        String date = req.getParameter("date");
        String sex = req.getParameter("sex");

        stu.setStu_number(stu_number);
        stu.setStu_name(stu_name);
        stu.setPassword(password);
        stu.setStu_age(Integer.parseInt(age));
        stu.setStu_grape(stu_grade_info);
        stu.setStu_class(stu_class_info);
        stu.setPhone(phone);
        stu.setEntrance_date(date);
        stu.setStu_sex(sex);

        System.out.println(stu);
        stuService.modify(stu);
        try {
            resp.sendRedirect(req.getContextPath()+"/jsp/admin/stu_info_input.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void show_stu_info(HttpServletRequest req, HttpServletResponse resp) {
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

        Stu stu = new Stu(stu_number, stu_name, stu_age, stu_sex,stu_class, stu_grape,password, type, phone, entrance_date);
//        stu.setStu_number(stu_number);
//        stu.setStu_name(stu_name);
//        stu.setStu_age(stu_age);
//        stu.setStu_sex(stu_sex);
//        stu.setStu_class(stu_class);
//        stu.setStu_grape(stu_grape);
//        stu.setPassword(password);
//        stu.setType(type);
//        stu.setPhone(phone);
//        stu.setEntrance_date(entrance_date);
        System.out.println(stu);
        stuService.save(stu);
        try {
            resp.sendRedirect(req.getContextPath()+"/jsp/admin/stu_info_input.jsp");
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
            resp.sendRedirect(req.getContextPath()+"/jsp/admin/index.jsp");
        }else {
            req.setAttribute("info","登录失败！请检查用户名与密码！");
            resp.sendRedirect(req.getContextPath()+"/jsp/login/login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req, resp);
    }
}
