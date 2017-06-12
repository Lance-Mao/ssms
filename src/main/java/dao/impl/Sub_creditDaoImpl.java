package dao.impl;

import dao.Sub_creditDao;
import entity.Sub_credit;
import org.apache.commons.dbutils.handlers.MapListHandler;
import utils.DBConn;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/11.
 */
public class Sub_creditDaoImpl implements Sub_creditDao {
    public void save(Sub_credit sub_credit) {
        String sql = "insert into sub_credit(stu_number,subject,stu_name,credit,tea_name,tea_number) values(?,?,?,?,?,?)";
        try {
            DBConn.getQueryRunner().update(sql, sub_credit.getStu_number(), sub_credit.getSubject(), sub_credit.getStu_name(), sub_credit.getCredit(), sub_credit.getTea_name(), sub_credit.getTea_number());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Map<String, Object>> listInfo(int number) {
        String sql = "select * from sub_credit where stu_number = ?";
        try {
            return DBConn.getQueryRunner().query(sql, new MapListHandler(), number);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
