package dao.impl;

import dao.CourseDao;
import entity.Course;
import org.apache.commons.dbutils.handlers.MapListHandler;
import utils.DBConn;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class CourseDaoImpl implements CourseDao {
    public void saveCourse(Course course) {
        System.out.println(333333);
        String sql = "insert into course(c_name,c_score,t_name,t_number,date,s_name,s_number,credit) values(?,?,?,?,?,?,?,?)";
        try {
            System.out.println(course);
            DBConn.getQueryRunner().update(sql, course.getC_name(), course.getC_score(), course.getT_name(), course.getT_number(), course.getDate(), course.getS_name(), course.getS_number(),course.getCredit());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, Object>> outCourse(String name) {
        String sql = "select * from course where s_name = ?";
        try {
            return DBConn.getQueryRunner().query(sql,new MapListHandler(),name);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
