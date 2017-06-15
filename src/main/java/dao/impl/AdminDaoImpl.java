package dao.impl;

import dao.AdminDao;
import entity.Admin;
import org.apache.commons.dbutils.handlers.MapHandler;
import utils.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public class AdminDaoImpl implements AdminDao {
    public boolean login(Admin admin) {
        try {
            Connection conn = DBConn.getDataSource().getConnection();
            String sql = "select * from admin_info WHERE number = ? and password = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, admin.getNumber());
            pstm.setString(2,admin.getPassword());
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                return true;
            }

            //关闭链接
            pstm.close();
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {

        }
        return false;
    }

    public Map<String, Object> infoMap(String number) {
        String sql = "select * from admin_info where number = ?";
        try {
            Map<String, Object> mapInfo = DBConn.getQueryRunner().query(sql, new MapHandler(), number);
            return mapInfo;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
