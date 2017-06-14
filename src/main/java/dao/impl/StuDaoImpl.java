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
            pstm.setString(1,stu.getStu_number());
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

    public Map<String, Object> infoMap(String number) {
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

    public void save(Stu stu) {
        String sql = "insert into stu_info(stu_number,stu_name,stu_age,stu_sex,stu_class,stu_grape,stu_score,password,phone,entrance_date,type) values(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            DBConn.getQueryRunner().update(sql, stu.getStu_number(), stu.getStu_name(), stu.getStu_age(), stu.getStu_sex(), stu.getStu_class(), stu.getStu_grape(), stu.getStu_score(), stu.getPassword(), stu.getPhone(), stu.getEntrance_date(), stu.getType());
        } catch (SQLException e) {
            System.out.println("学生信息存储失败！");
            e.printStackTrace();
        }
    }

    public List<Map<String, Object>> allStuInfo() {
        String sql = "select * from stu_info";
        try {
            return DBConn.getQueryRunner().query(sql, new MapListHandler());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public void delInfo(String number) {
        String sql = "delete from stu_info where stu_number = ?";
        try {
            DBConn.getQueryRunner().update(sql, number);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void modify(Stu stu) {
        String sql = "update stu_info set stu_name = ?,stu_age=?,stu_sex=?,stu_class=?,stu_grape=?,stu_score=?,password=?,type=?,phone=?,entrance_date =? where stu_number = ?";
        try {
            DBConn.getQueryRunner().update(sql,stu.getStu_name(), stu.getStu_age(), stu.getStu_sex(), stu.getStu_class(), stu.getStu_grape(), stu.getStu_score(), stu.getPassword(), stu.getPhone(), stu.getEntrance_date(), stu.getType(),stu.getStu_number());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void test(){
        StuDaoImpl stuDao = new StuDaoImpl();
        stuDao.infoMap("111111");
    }
}
