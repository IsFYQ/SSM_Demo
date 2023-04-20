package com.edu.beans;

import java.util.List;

public class Course {
    private int cid;
    private String cname;
    private String c_count;
    private String teacher;
    private List<Student> student;

    public Course() {
    }

    public Course(String cname, String c_count, String teacher) {
        this.cname = cname;
        this.c_count = c_count;
        this.teacher = teacher;
    }

    public Course(int cid, String cname, String c_count, String teacher) {
        this.cid = cid;
        this.cname = cname;
        this.c_count = c_count;
        this.teacher = teacher;
    }

    public Course(String cname, String c_count) {
        this.cname = cname;
        this.c_count = c_count;
    }

    public Course(String cname) {
        this.cname = cname;
    }

    public Course(int cid, String cname, String c_count, String teacher, List<Student> student) {
        this.cid = cid;
        this.cname = cname;
        this.c_count = c_count;
        this.teacher = teacher;
        this.student = student;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getC_count() {
        return c_count;
    }

    public void setC_count(String c_count) {
        this.c_count = c_count;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public List<Student> getStudent() {
        return student;
    }

    public void setStudent(List<Student> student) {
        this.student = student;
    }

    @Override
    public String toString() {
        return "Course{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", c_count='" + c_count + '\'' +
                ", teacher='" + teacher + '\'' +
                ", students=" + student +
                '}';
    }
}
