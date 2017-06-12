package dao;

import entity.Leave_word;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/10.
 */
public interface Leave_wordDao {

    //保存学生提交的留言信息
    void saveLeave_word(Leave_word leave_word);

    //获取学生的留言信息
    List<Map<String, Object>> outLeave_word();
}
