package com.edu.service.impl;

import com.edu.beans.Course;
import com.edu.dao.ICourseDao;
import com.edu.service.ICourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements ICourseService {
    @Autowired
    ICourseDao dao;

    @Override
    public void insertCourse(Course course) {
        dao.insertCourse(course);
    }

    @Override
    public void deleteCourse(int cid) {
        dao.deleteCourse(cid);
    }

    @Override
    public void updateCourse(Course course) {
        dao.updateCourse(course);
    }

    @Override
    public void addCount(int cid) {
        dao.addCount(cid);
    }

    @Override
    public List<Course> getCourse() {
        List<Course> course = dao.getCourse();
        return course;
    }

    @Override
    public List<Course> getCourseByCname(String cname) {
        List<Course> courses = dao.getCourseByCname(cname);
        return courses;
    }
}
