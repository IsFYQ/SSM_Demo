package com.edu.dao;

import com.edu.beans.Course;
import com.edu.beans.Student;

import java.util.List;

public interface IStudentDao {
    void register(Student student);
    void login(Student student);

    void delete(int id);
    void update(Student student);
    List<Student> select();
    List<Student> selectStudentByCid(int cid);
    List<Student> selectStudentBySid(int sid);
    List<Student> selectStudentBySname(String sname);
}
