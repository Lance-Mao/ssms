package service.impl;

import dao.Sub_creditDao;
import dao.impl.Sub_creditDaoImpl;
import entity.Sub_credit;
import service.Sub_creditService;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/11.
 */
public class Sub_creditServiceImpl implements Sub_creditService {
    private Sub_creditDao sub_creditDao = new Sub_creditDaoImpl();
    public void save(Sub_credit sub_credit) {
        sub_creditDao.save(sub_credit);
    }

    public List<Map<String, Object>> listInfo(String number) {
        return sub_creditDao.listInfo(number);
    }
}
