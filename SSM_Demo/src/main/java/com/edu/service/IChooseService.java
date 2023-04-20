package com.edu.service;

import com.edu.beans.Choose;

import java.util.List;

public interface IChooseService {
    void addChoose(Choose choose);

    void deleteChoose(int choose_id);
    void deleteChooseBySid(int sid);
    void deleteChooseByCid(int cid);

    void updateChoose(Choose choose);

    List<Choose> queryChoose();
    List<Choose> queryChooseBySid(int sid);
    List<Choose> queryChooseByCid(int cid);
}
