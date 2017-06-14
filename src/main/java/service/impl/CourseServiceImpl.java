package service.impl;

import dao.CourseDao;
import dao.impl.CourseDaoImpl;
import entity.Course;
import service.CourseService;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class CourseServiceImpl implements CourseService {
    private CourseDao courseDao = new CourseDaoImpl();
    public void saveCourse(Course course) {
        courseDao.saveCourse(course);
    }

    public List<Map<String, Object>> outCourse(String name) {
        return courseDao.outCourse(name);
    }

    public void saveRelationship(Course course) {
        courseDao.saveRelationship(course);
    }

    public List<Map<String, Object>> outRelationship() {
        return courseDao.outRelationship();
    }

    public void delRelationship(String number) {
        courseDao.delRelationship(number);
    }
}
