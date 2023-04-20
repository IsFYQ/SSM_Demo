package com.edu.dao;

import com.edu.beans.Choose;
import com.edu.beans.Course;
import com.edu.beans.Student;

import java.util.List;

public interface IChooseDao {
    void addChoose(Choose choose);

    void deleteChoose(int id);
    void deleteChooseBySid(int sid);
    void deleteChooseByCid(int cid);

    void updateChoose(Choose choose);

    List<Choose> queryChoose();
    List<Choose> queryChooseBySid(int sid);
    List<Choose> queryChooseByCid(int cid);
}