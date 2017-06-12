package service;

import entity.Stu_subject;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public interface Stu_subjectService {
    //保存管理员录入的学生课程信息
    void saveStu_subject(Stu_subject stu_subject);

    //根据学生学号获取学生的课程信息
    List<Map<String, Object>> outStu_subject(int number);
}
