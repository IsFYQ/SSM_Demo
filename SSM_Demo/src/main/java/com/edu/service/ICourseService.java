package com.edu.service;

import com.edu.beans.Course;

import java.util.List;

public interface ICourseService {
    void insertCourse(Course course);
    void deleteCourse(int cid);
    void updateCourse(Course course);

    void addCount(int cid);

    List<Course> getCourse();
    List<Course> getCourseByCname(String cname);
}
