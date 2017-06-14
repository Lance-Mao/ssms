package dao.impl;

import dao.Leave_wordDao;
import entity.Leave_word;
import org.apache.commons.dbutils.handlers.MapListHandler;
import utils.DBConn;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class Leave_wordDaoImpl implements Leave_wordDao {
    public void saveLeave_word(Leave_word leave_word) {
        String sql = "insert into leave_word(stu_number,stu_name,stu_msg,tea_name) values(?,?,?,?)";
        try {
            DBConn.getQueryRunner().update(sql, leave_word.getStu_number(), leave_word.getStu_name(), leave_word.getStu_msg(),leave_word.getTea_name());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, Object>> outLeave_word() {
        String sql = "select * from leave_word";
        try {
            return DBConn.getQueryRunner().query(sql, new MapListHandler());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
