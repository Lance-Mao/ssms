package service.impl;

import dao.Publish_infoDao;
import dao.impl.Publish_infoDaoImpl;
import entity.Publish_info;
import service.Publish_infoService;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class Publish_infoServiceImpl implements Publish_infoService {
    private Publish_infoDao publish_infoDao = new Publish_infoDaoImpl();
    public void savePublish_info(Publish_info publish_info) {
        publish_infoDao.savePublish_info(publish_info);
    }

    public List<Map<String, Object>> outPublish_info() {
        return publish_infoDao.outPublish_info();
    }
}
