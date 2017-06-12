package service.impl;

import dao.StuDao;
import dao.impl.StuDaoImpl;
import entity.Stu;
import service.StuService;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public class StuServiceImpl implements StuService {
    private StuDao stuDao = new StuDaoImpl();
    public List<Map<String, Object>> info() {
        return stuDao.info();
    }

    public boolean login(Stu stu) {
        return stuDao.login(stu);
    }

    public Map<String, Object> infoMap(int number) {
        return stuDao.infoMap(number);
    }
}
