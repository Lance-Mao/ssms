package entity;

/**
 * Created by admin on 2017/6/10.
 */
public class Stu_subject {

    private int stu_number;
    private String stu_name;
    private String sub_list;

    @Override
    public String toString() {
        return "Stu_subject{" +
                "stu_number=" + stu_number +
                ", stu_name='" + stu_name + '\'' +
                ", sub_list='" + sub_list + '\'' +
                '}';
    }

    public Stu_subject(){}

    public Stu_subject(int stu_number, String stu_name, String sub_list) {
        this.stu_number = stu_number;
        this.stu_name = stu_name;
        this.sub_list = sub_list;
    }

    public int getStu_number() {
        return stu_number;
    }

    public void setStu_number(int stu_number) {
        this.stu_number = stu_number;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getSub_list() {
        return sub_list;
    }

    public void setSub_list(String sub_list) {
        this.sub_list = sub_list;
    }
}
