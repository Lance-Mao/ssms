package service.impl;

import dao.Leave_wordDao;
import dao.impl.Leave_wordDaoImpl;
import entity.Leave_word;
import service.Leave_wordService;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class Leave_wordServiceImpl implements Leave_wordService {
    private Leave_wordDao leave_wordDao = new Leave_wordDaoImpl();
    public void saveLeave_word(Leave_word leave_word) {
        leave_wordDao.saveLeave_word(leave_word);
    }

    public List<Map<String, Object>> outLeave_word() {
        return leave_wordDao.outLeave_word();
    }
}
