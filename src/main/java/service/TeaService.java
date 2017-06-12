package service;

import entity.Tea;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public interface TeaService {
    //查询所有信息
    List<Tea> info();
    //登录时，匹配用户名与吗，密码是否一致
    boolean login(Tea tea);
    //根据老师工号查询该老师信息
    Map<String, Object> infoMap(int number);
}
