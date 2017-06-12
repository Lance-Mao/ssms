package service.impl;

import dao.Stu_subjectDao;
import dao.impl.Stu_subjectDaoImpl;
import entity.Stu_subject;
import service.Stu_subjectService;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public class Stu_subjectServiceImpl implements Stu_subjectService {
    private Stu_subjectDao stu_subjectDao = new Stu_subjectDaoImpl();
    public void saveStu_subject(Stu_subject stu_subject) {
        stu_subjectDao.saveStu_subject(stu_subject);
    }

    public List<Map<String, Object>> outStu_subject(int number) {
        return stu_subjectDao.outStu_subject(number);
    }
}
