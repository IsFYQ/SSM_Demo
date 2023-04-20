package com.edu.dao;

import com.edu.beans.Course;

import java.util.List;

public interface ICourseDao {
    void insertCourse(Course course);
    void deleteCourse(int cid);
    void updateCourse(Course course);

    void addCount(int cid);

    List<Course> getCourse();
    List<Course> getCourseByCname(String cname);
}
