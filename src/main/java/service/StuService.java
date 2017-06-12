package service;

import entity.Stu;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public interface StuService {
    //查询所有信息
    List<Map<String, Object>> info( );
    //判断学生登陆
    boolean login(Stu stu);
    //根据学生学号查询该学生信息
    Map<String, Object> infoMap(int number);
}
