package service;

import entity.Admin;

import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public interface AdminSevice {
    //判断管理员登录
    boolean login(Admin admin);
    //根据管理员工号查询该管理员信息
    Map<String, Object> infoMap(String number);
}
