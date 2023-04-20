package com.edu.service.impl;

import com.edu.beans.Choose;
import com.edu.dao.IChooseDao;
import com.edu.service.IChooseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChooseServiceImpl implements IChooseService {
    @Autowired
    IChooseDao dao;

    @Override
    public void addChoose(Choose choose) {
        dao.addChoose(choose);
    }

    @Override
    public void deleteChoose(int id) {
        dao.deleteChoose(id);
    }

    @Override
    public void deleteChooseBySid(int sid) {
        dao.deleteChooseBySid(sid);
    }

    @Override
    public void deleteChooseByCid(int cid) {
        dao.deleteChooseByCid(cid);
    }

    @Override
    public void updateChoose(Choose choose) {
        dao.updateChoose(choose);
    }

    @Override
    public List<Choose> queryChoose() {
        List<Choose> chooses = dao.queryChoose();
        return chooses;
    }

    @Override
    public List<Choose> queryChooseBySid(int sid) {
        List<Choose> chooses = dao.queryChooseBySid(sid);
        return chooses;
    }

    @Override
    public List<Choose> queryChooseByCid(int cid) {
        List<Choose> chooses = dao.queryChooseByCid(cid);
        return chooses;
    }
}
