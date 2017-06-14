package service;

import entity.Tea;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public interface TeaService {
    //查询所有信息
    List<Map<String,Object>> info();

    //登录时，匹配用户名与吗，密码是否一致
    boolean login(Tea tea);

    //根据老师工号查询该老师信息
    Map<String, Object> infoMap(String number);

    //录入老师相关信息
    void save(Tea tea);

    //根据教师工号删除该教师信息
    void delInfo(String number);

    //根据教师工号修改该教师信息
    void modify(Tea tea);

    //根据教师姓名查找学生给教师的留言
    List<Map<String, Object>> appointShowLeave_word(String name);
}
