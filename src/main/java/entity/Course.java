package entity;

import java.util.Date;

/**
 * Created by admin on 2017/6/10.
 */
public class Course {

    private String c_name;
    private String c_score;
    private String t_name;
    private String t_number;
    private String date;
    private String s_name;
    private String s_number;
    private String credit;


    public Course() {

    }


    public Course(String c_name, String t_name, String t_number, String s_name, String s_number, String credit) {
        this.c_name = c_name;
        this.t_name = t_name;
        this.t_number = t_number;
        this.s_name = s_name;
        this.s_number = s_number;
        this.credit = credit;
    }

    public Course(String c_name, String c_score, String t_name, String t_number, String date, String s_name, String s_number, String credit) {
        this.c_name = c_name;
        this.c_score = c_score;
        this.t_name = t_name;
        this.t_number = t_number;
        this.date = date;
        this.s_name = s_name;
        this.s_number = s_number;
        this.credit = credit;
    }

    @Override
    public String toString() {
        return "Course{" +
                "c_name='" + c_name + '\'' +
                ", c_score='" + c_score + '\'' +
                ", t_name='" + t_name + '\'' +
                ", t_number='" + t_number + '\'' +
                ", date='" + date + '\'' +
                ", s_name='" + s_name + '\'' +
                ", s_number='" + s_number + '\'' +
                ", credit='" + credit + '\'' +
                '}';
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_score() {
        return c_score;
    }

    public void setC_score(String c_score) {
        this.c_score = c_score;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getT_number() {
        return t_number;
    }

    public void setT_number(String t_number) {
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

    public String getS_number() {
        return s_number;
    }

    public void setS_number(String s_number) {
        this.s_number = s_number;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }
}
