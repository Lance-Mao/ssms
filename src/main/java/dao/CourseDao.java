package dao;

import entity.Course;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public interface CourseDao {

    //存入老师录入的学生成绩
    void saveCourse(Course course);

    //获取老师录入的成绩
    List<Map<String, Object>> outCourse(String name);
}
