package com.edu.beans;

import java.util.List;

public class Student {
    private int id;
    private String name;
    private int age;
    private String pwd;

    private List<Course> courses;

    public Student() {
    }

    public Student(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public Student(String name, int age, String pwd) {
        this.name = name;
        this.age = age;
        this.pwd = pwd;
    }

    public Student(String name, String pwd) {
        this.name = name;
        this.pwd = pwd;
    }

    public Student(Integer id, String name, int age) {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    public Student(Integer id, String name, int age, String pwd) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.pwd = pwd;
    }

    public Student(String name) {
        this.name = name;
    }

    public Student(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Student(int id, String name, int age) {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", pwd='" + pwd + '\'' +
                ", courses=" + courses +
                '}';
    }
}
