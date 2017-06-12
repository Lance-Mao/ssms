package entity;

import java.util.Date;

/**
 * Created by admin on 2017/6/10.
 */
public class Course {

    private String c_name;
    private float c_score;
    private String t_name;
    private int t_number;
    private String date;
    private String s_name;
    private int s_number;
    private int credit;


    @Override
    public String toString() {
        return "Course{" +
                "c_name='" + c_name + '\'' +
                ", c_score=" + c_score +
                ", t_name='" + t_name + '\'' +
                ", t_number=" + t_number +
                ", date='" + date + '\'' +
                ", s_name='" + s_name + '\'' +
                ", s_number=" + s_number +
                ", credit=" + credit +
                '}';
    }

    public Course(){}


    public Course(String c_name, float c_score, String t_name, int t_number, String date, String s_name, int s_number, int credit) {
        this.c_name = c_name;
        this.c_score = c_score;
        this.t_name = t_name;
        this.t_number = t_number;
        this.date = date;
        this.s_name = s_name;
        this.s_number = s_number;
        this.credit = credit;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public float getC_score() {
        return c_score;
    }

    public void setC_score(float c_score) {
        this.c_score = c_score;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public int getT_number() {
        return t_number;
    }

    public void setT_number(int t_number) {
        this.t_number = t_number;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public int getS_number() {
        return s_number;
    }

    public void setS_number(int s_number) {
        this.s_number = s_number;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }
}
