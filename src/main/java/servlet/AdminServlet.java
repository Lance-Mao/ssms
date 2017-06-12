package servlet;

import entity.Admin;
import entity.Tea;
import service.AdminSevice;
import service.impl.AdminSeviceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
@WebServlet(name = "AdminServlet",urlPatterns = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    private AdminSevice adminSevice = new AdminSeviceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String method = req.getParameter("method");
        if (method.equals("login")) {
            login(req, resp);
        }

    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int number = Integer.parseInt(req.getParameter("username"));
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
