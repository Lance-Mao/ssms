package entity;

/**
 * Created by admin on 2017/6/10.
 */
public class Publish_info {
    private String tea_number;
    private String tea_name;
    private String tea_msg;
    private String date;

    public Publish_info() {

    }

    @Override
    public String toString() {
        return "Publish_info{" +
                "tea_number='" + tea_number + '\'' +
                ", tea_name='" + tea_name + '\'' +
                ", tea_msg='" + tea_msg + '\'' +
                ", date='" + date + '\'' +
                '}';
    }

    public Publish_info(String tea_number, String tea_name, String tea_msg, String date) {
        this.tea_number = tea_number;
        this.tea_name = tea_name;
        this.tea_msg = tea_msg;
        this.date = date;
    }

    public String getTea_number() {
        return tea_number;
    }

    public void setTea_number(String tea_number) {
        this.tea_number = tea_number;
    }

    public String getTea_name() {
        return tea_name;
    }

    public void setTea_name(String tea_name) {
        this.tea_name = tea_name;
    }

    public String getTea_msg() {
        return tea_msg;
    }

    public void setTea_msg(String tea_msg) {
        this.tea_msg = tea_msg;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
