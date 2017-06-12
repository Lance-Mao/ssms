package dao.impl;

import dao.StuDao;
import entity.Stu;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.junit.Test;
import utils.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public class StuDaoImpl implements StuDao {
    public List<Map<String, Object>> info() {
        String sql = "select * from stu_info";
        try {
            return DBConn.getQueryRunner().query(sql, new MapListHandler(),(Object[]) null);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean login(Stu stu) {
        try {
            Connection conn = DBConn.getDataSource().getConnection();
            String sql = "select * from stu_info WHERE stu_number = ? and password = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, stu.getStu_number());
            pstm.setString(2,stu.getPassword());
            ResultSet rs = pstm.executeQuery();
            System.out.println("学生成绩判断进入！");
            if (rs.next()) {
                System.out.println("学生信息判断成功！");
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Map<String, Object> infoMap(int number) {
        String sql = "select * from stu_info where stu_number = ?";
        try {
            Map<String, Object> mapInfo = DBConn.getQueryRunner().query(sql, new MapHandler(), number);
            System.out.println(mapInfo);
            return mapInfo;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Test
    public void test(){
        StuDaoImpl stuDao = new StuDaoImpl();
        stuDao.infoMap(111111);
    }
}
