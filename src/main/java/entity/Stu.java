package entity;

/**
 * Created by admin on 2017/6/7.
 */
public class Stu {
    private int id;
    private String stu_number;
    private String stu_name;
    private int stu_age;
    private String stu_sex;
    private String stu_class;
    private String stu_grape;
    private String password;
    private float stu_score;
    private String type;
    private String phone;
    private String entrance_date;


    public Stu() {

    }

    public Stu(String stu_number, String stu_name, int stu_age, String stu_sex, String stu_class, String stu_grape, String password,  String type, String phone, String entrance_date) {
        this.stu_number = stu_number;
        this.stu_name = stu_name;
        this.stu_age = stu_age;
        this.stu_sex = stu_sex;
        this.stu_class = stu_class;
        this.stu_grape = stu_grape;
        this.password = password;
        this.stu_score = stu_score;
        this.type = type;
        this.phone = phone;
        this.entrance_date = entrance_date;
    }

    @Override
    public String toString() {
        return "Stu{" +
                "id=" + id +
                ", stu_number='" + stu_number + '\'' +
                ", stu_name='" + stu_name + '\'' +
                ", stu_age=" + stu_age +
                ", stu_sex='" + stu_sex + '\'' +
                ", stu_class='" + stu_class + '\'' +
                ", stu_grape='" + stu_grape + '\'' +
                ", password='" + password + '\'' +
                ", stu_score=" + stu_score +
                ", type='" + type + '\'' +
                ", phone='" + phone + '\'' +
                ", entrance_date='" + entrance_date + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getStu_age() {
        return stu_age;
    }

    public void setStu_age(int stu_age) {
        this.stu_age = stu_age;
    }

    public String getStu_sex() {
        return stu_sex;
    }

    public void setStu_sex(String stu_sex) {
        this.stu_sex = stu_sex;
    }

    public String getStu_class() {
        return stu_class;
    }

    public void setStu_class(String stu_class) {
        this.stu_class = stu_class;
    }

    public String getStu_grape() {
        return stu_grape;
    }

    public void setStu_grape(String stu_grape) {
        this.stu_grape = stu_grape;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public float getStu_score() {
        return stu_score;
    }

    public void setStu_score(float stu_score) {
        this.stu_score = stu_score;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEntrance_date() {
        return entrance_date;
    }

    public void setEntrance_date(String entrance_date) {
        this.entrance_date = entrance_date;
    }
}
