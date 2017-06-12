package entity;

/**
 * Created by admin on 2017/6/7.
 */
public class Tea {
    private int id;
    private String tea_number;
    private String tea_name;
    private String tea_sex;
    private int tea_age;
    private String password;
    private String type;
    private String phone;
    private String theClass;
    private String theCourse;
    private String entrance_date;
    private String date;

    public Tea() {

    }

    public Tea(String tea_number, String tea_name, String tea_sex, int tea_age, String password, String type, String phone, String theClass, String theCourse, String date) {
        this.tea_number = tea_number;
        this.tea_name = tea_name;
        this.tea_sex = tea_sex;
        this.tea_age = tea_age;
        this.password = password;
        this.type = type;
        this.phone = phone;
        this.theClass = theClass;
        this.theCourse = theCourse;
        this.date = date;
    }

    @Override
    public String toString() {
        return "Tea{" +
                "id=" + id +
                ", tea_number='" + tea_number + '\'' +
                ", tea_name='" + tea_name + '\'' +
                ", tea_sex='" + tea_sex + '\'' +
                ", tea_age=" + tea_age +
                ", password='" + password + '\'' +
                ", type='" + type + '\'' +
                ", phone='" + phone + '\'' +
                ", theClass='" + theClass + '\'' +
                ", theCourse='" + theCourse + '\'' +
                ", entrance_date='" + entrance_date + '\'' +
                ", date='" + date + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getTea_sex() {
        return tea_sex;
    }

    public void setTea_sex(String tea_sex) {
        this.tea_sex = tea_sex;
    }

    public int getTea_age() {
        return tea_age;
    }

    public void setTea_age(int tea_age) {
        this.tea_age = tea_age;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getTheClass() {
        return theClass;
    }

    public void setTheClass(String theClass) {
        this.theClass = theClass;
    }

    public String getTheCourse() {
        return theCourse;
    }

    public void setTheCourse(String theCourse) {
        this.theCourse = theCourse;
    }

    public String getEntrance_date() {
        return entrance_date;
    }

    public void setEntrance_date(String entrance_date) {
        this.entrance_date = entrance_date;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
