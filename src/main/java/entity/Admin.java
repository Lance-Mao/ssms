package entity;

/**
 * Created by admin on 2017/6/7.
 */
public class Admin {

    private int id;
    private String number;
    private String name;
    private String password;
    private String type;

    public Admin() {

    }

    public Admin(String number, String name, String password, String type) {
        this.number = number;
        this.name = name;
        this.password = password;
        this.type = type;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", number='" + number + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", type='" + type + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
}

