package dao.impl;

import dao.TeaDao;
import entity.Stu;
import entity.Tea;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
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
public class TeaDaoImpl implements TeaDao {
    public List<Tea> info() {
        String sql = "select * from tea_info";
        try {
            return DBConn.getQueryRunner().query(sql, new BeanListHandler<Tea>(Tea.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean login(Tea tea) {
        try {
            Connection conn = DBConn.getDataSource().getConnection();
            String sql = "select * from tea_info WHERE tea_number = ? and password = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, tea.getTea_number());
            pstm.setString(2,tea.getPassword());
            ResultSet rs = pstm.executeQuery();
            System.out.println(123);
            System.out.println(rs);
            if (rs.next()) {
                System.out.println(456);
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Map<String, Object> infoMap(String number) {
        String sql = "select * from tea_info where tea_number = ?";
        try {
            Map<String, Object> mapInfo = DBConn.getQueryRunner().query(sql, new MapHandler(), number);
            return mapInfo;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void save(Tea tea) {
        String sql = "insert into tea_info(tea_number,tea_name,tea_sex,tea_age,password,type,phone,theClass,theCourse,entrance_date) values(?,?,?,?,?,?,?,?,?,?)";
        try {
            DBConn.getQueryRunner().update(sql, tea.getTea_number(), tea.getTea_name(), tea.getTea_sex(), tea.getTea_age(), tea.getPassword(), tea.getType(), tea.getPhone(), tea.getTheClass(), tea.getTheCourse(),tea.getDate());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
