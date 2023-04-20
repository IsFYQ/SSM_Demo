package com.edu.service;

import com.edu.beans.Student;

import java.util.List;

public interface IStudentService {
    void register(Student student);
    void login(Student student);

    void delete(int id);
    void update(Student student);
    List<Student> select();
    List<Student> selectStudentBySname(String sname);
}
