package service.impl;

import dao.TeaDao;
import dao.impl.TeaDaoImpl;
import entity.Tea;
import service.TeaService;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/7.
 */
public class TeaServiceImpl implements TeaService {
    private TeaDao teaDao = new TeaDaoImpl();
    public List<Tea> info() {
        return teaDao.info();
    }



    public boolean login(Tea tea) {
        return teaDao.login(tea);
    }


    public Map<String, Object> infoMap(String number) {
        return teaDao.infoMap(number);
    }

    public void save(Tea tea) {
        teaDao.save(tea);
    }
}
