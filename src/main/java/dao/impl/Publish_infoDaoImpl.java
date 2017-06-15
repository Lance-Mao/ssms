package dao.impl;

import dao.Publish_infoDao;
import entity.Publish_info;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.junit.Test;
import utils.DBConn;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class Publish_infoDaoImpl implements Publish_infoDao {
    public void savePublish_info(Publish_info publish_info) {
        String sql = "insert into publish_info(tea_number,tea_name,tea_msg,date) values(?,?,?,?)";
        try {
            DBConn.getQueryRunner().update(sql, publish_info.getTea_number(), publish_info.getTea_name(), publish_info.getTea_msg(),publish_info.getDate());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Map<String,Object>> outPublish_info() {
        String sql = "select * from publish_info";

        try {
            return DBConn.getQueryRunner().query(sql, new MapListHandler());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Test
    public void test(){
        String name = "张三";
        String sql = "select * from publish_info where tea_name = ?";
        try {
            System.out.println(DBConn.getQueryRunner().query(sql, new MapListHandler(), name).get(0).get("tea_name"));
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
