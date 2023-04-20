package com.edu.service.impl;

import com.edu.beans.Student;
import com.edu.dao.IStudentDao;
import com.edu.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements IStudentService {
    @Autowired
    private IStudentDao dao;

    @Override
    public void register(Student student) {
        dao.register(student);
    }

    @Override
    public void login(Student student) {
        dao.login(student);
    }

    @Override
    public void delete(int id) {
        dao.delete(id);
    }

    @Override
    public void update(Student student) {
        dao.update(student);
    }

    @Override
    public List<Student> select() {
        List<Student> students = dao.select();
        return students;
    }

    @Override
    public List<Student> selectStudentBySname(String sname) {
        List<Student> students = dao.selectStudentBySname(sname);
        return students;
    }
}
