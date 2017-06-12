package entity;

/**
 * Created by admin on 2017/6/10.
 */
public class Sub_credit {
    private int stu_number;
    private String subject;
    private String stu_name;
    private int credit;  //学分
    private String tea_name;
    private int tea_number;

    public Sub_credit(){}


    public Sub_credit(int stu_number, String subject, String stu_name, int credit, String tea_name, int tea_number) {
        this.stu_number = stu_number;
        this.subject = subject;
        this.stu_name = stu_name;
        this.credit = credit;
        this.tea_name = tea_name;
        this.tea_number = tea_number;
    }

    @Override
    public String toString() {
        return "Sub_credit{" +
                "stu_number=" + stu_number +
                ", subject='" + subject + '\'' +
                ", stu_name='" + stu_name + '\'' +
                ", credit=" + credit +
                ", tea_name='" + tea_name + '\'' +
                ", tea_number=" + tea_number +
                '}';
    }

    public int getStu_number() {
        return stu_number;
    }

    public void setStu_number(int stu_number) {
        this.stu_number = stu_number;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public String getTea_name() {
        return tea_name;
    }

    public void setTea_name(String tea_name) {
        this.tea_name = tea_name;
    }

    public int getTea_number() {
        return tea_number;
    }

    public void setTea_number(int tea_number) {
        this.tea_number = tea_number;
    }
}
