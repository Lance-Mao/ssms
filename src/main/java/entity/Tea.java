package entity;

/**
 * Created by admin on 2017/6/7.
 */
public class Tea {
    private int id;
    private int tea_number;
    private String tea_name;
    private String tea_sex;
    private int tea_age;
    private String password;
    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Tea{" +
                "id=" + id +
                ", tea_number=" + tea_number +
                ", tea_name='" + tea_name + '\'' +
                ", tea_sex='" + tea_sex + '\'' +
                ", tea_age=" + tea_age +
                ", password='" + password + '\'' +
                '}';
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTea_number() {
        return tea_number;
    }

    public void setTea_number(int tea_number) {
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
}
