package com.edu.beans;

public class Choose {
    private int choose_id;
    private Student student;
    private Course course;

    public Choose() {
    }

    public Choose(Student student, Course course) {
        this.student = student;
        this.course = course;
    }

    public Choose(int choose_id, Student student, Course course) {
        this.choose_id = choose_id;
        this.student = student;
        this.course = course;
    }

    public int getChoose_id() {
        return choose_id;
    }

    public void setChoose_id(int choose_id) {
        this.choose_id = choose_id;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Course getCourse() {
        if (this.course == null) {
            this.course = new Course();
        }
        return this.course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    @Override
    public String toString() {
        return "Choose{" +
                "cid=" + choose_id +
                ", student=" + student +
                ", course=" + course +
                '}';
    }
}
