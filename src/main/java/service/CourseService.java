package service;

import entity.Course;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public interface CourseService {
    //存入老师录入的学生成绩
    void saveCourse(Course course);

    //获取老师录入的成绩
    List<Map<String, Object>> outCourse(String name);

    //录入管理员存入的学生老师课程之间的关系
    void saveRelationship(Course course);

    //取出所有信息
    List<Map<String, Object>> outRelationship();

    //根据教师工号删除该条信息
    void delRelationship(String number);


}
