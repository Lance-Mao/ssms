package dao;

import entity.Publish_info;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public interface Publish_infoDao {

    //保存老师发布的公告
    void savePublish_info(Publish_info publish_info);

    //获取发布的公告
    List<Map<String,Object>> outPublish_info();
}
