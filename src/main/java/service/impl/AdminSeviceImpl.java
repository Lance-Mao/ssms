package service.impl;

import dao.AdminDao;
import dao.impl.AdminDaoImpl;
import entity.Admin;
import service.AdminSevice;

import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public class AdminSeviceImpl implements AdminSevice {
    private AdminDao adminDao = new AdminDaoImpl();
    public boolean login(Admin admin) {
        return adminDao.login(admin);
    }

    public Map<String, Object> infoMap(String number) {
        return adminDao.infoMap(number);
    }
}
