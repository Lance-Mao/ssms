package entity;

/**
 * Created by admin on 2017/6/7.
 */
public class Stu {
    private int id;
    private int stu_number;
    private String stu_nume;
    private int stu_age;
    private String stu_sex;
    private String stu_class;
    private String stu_grape;
    private String password;
    private float stu_score;
    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public int getStu_number() {
        return stu_number;
    }

    public void setStu_number(int stu_number) {
        this.stu_number = stu_number;
    }

    public String getStu_nume() {
        return stu_nume;
    }

    public void setStu_nume(String stu_nume) {
        this.stu_nume = stu_nume;
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

    public float getStu_score() {
        return stu_score;
    }

    public void setStu_score(float stu_score) {
        this.stu_score = stu_score;
    }

    @Override
    public String toString() {
        return "Stu{" +
                "id=" + id +
                ", stu_number=" + stu_number +
                ", stu_nume='" + stu_nume + '\'' +
                ", stu_age=" + stu_age +
                ", stu_sex='" + stu_sex + '\'' +
                ", stu_class='" + stu_class + '\'' +
                ", stu_grape='" + stu_grape + '\'' +
                ", password='" + password + '\'' +
                ", stu_score=" + stu_score +
                '}';
    }
}
