package service;

import entity.Sub_credit;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/11.
 */
public interface Sub_creditService {

    //录入学生课程信息
    void save(Sub_credit sub_credit);

    //根据学生学号获取学生课程信息
    List<Map<String, Object>> listInfo(int number);
}
