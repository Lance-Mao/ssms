package entity;

/**
 * Created by admin on 2017/6/10.
 */
public class Leave_word {
    private String stu_number;
    private String stu_name;
    private String stu_msg;
    private String tea_name;


    public Leave_word() {

    }

    public Leave_word(String stu_number, String stu_name, String stu_msg) {
        this.stu_number = stu_number;
        this.stu_name = stu_name;
        this.stu_msg = stu_msg;
    }


    public Leave_word(String stu_number, String stu_name, String stu_msg, String tea_name) {
        this.stu_number = stu_number;
        this.stu_name = stu_name;
        this.stu_msg = stu_msg;
        this.tea_name = tea_name;
    }

    @Override
    public String toString() {
        return "Leave_word{" +
                "stu_number='" + stu_number + '\'' +
                ", stu_name='" + stu_name + '\'' +
                ", stu_msg='" + stu_msg + '\'' +
                ", tea_name='" + tea_name + '\'' +
                '}';
    }

    public String getStu_number() {
        return stu_number;
    }

    public void setStu_number(String stu_number) {
        this.stu_number = stu_number;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getStu_msg() {
        return stu_msg;
    }

    public void setStu_msg(String stu_msg) {
        this.stu_msg = stu_msg;
    }

    public String getTea_name() {
        return tea_name;
    }

    public void setTea_name(String tea_name) {
        this.tea_name = tea_name;
    }
}
