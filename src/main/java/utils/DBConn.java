package utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import javax.sql.DataSource;

/**
 * Created by admin on 2017/6/6.
 */
public class DBConn {

    // 初始化连接池
    private static DataSource dataSource;
    static {
        dataSource = new ComboPooledDataSource();
    }

    public static DataSource getDataSource() {
        return dataSource;
    }

    /**
     * 创建DbUtils常用工具类对象
     */
    public static QueryRunner getQueryRunner() {
        return new QueryRunner(dataSource);
    }

}
