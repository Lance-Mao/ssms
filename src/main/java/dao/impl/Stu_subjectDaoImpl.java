package dao.impl;

import dao.Stu_subjectDao;
import entity.Stu_subject;
import org.apache.commons.dbutils.handlers.MapListHandler;
import utils.DBConn;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class Stu_subjectDaoImpl implements Stu_subjectDao {

    public void saveStu_subject(Stu_subject stu_subject) {
        String sql = "insert into stu_subject(stu_number,stu_name,sub_list) values(?,?,?)";
        try {
            DBConn.getQueryRunner().update(sql, new MapListHandler(), stu_subject.getStu_number(), stu_subject.getStu_name(), stu_subject.getSub_list());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, Object>> outStu_subject(int number) {
        String sql = "select * from stu_subject where stu_number = ?";
        try {
            return DBConn.getQueryRunner().query(sql, new MapListHandler(), number);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
