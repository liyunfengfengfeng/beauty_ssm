package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.TUserDao;
import com.yingjun.ssm.entity.TUser;
import com.yingjun.ssm.service.TUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class TUserServiceImpl implements TUserService{
    @Autowired
    private TUserDao tUserDao;
    @Override
    public long getTUserRowCount(){
        return tUserDao.getTUserRowCount();
    }
    @Override
    public List<TUser> selectTUser(){
        return tUserDao.selectTUser();
    }
    @Override
    public TUser selectTUserByObj(TUser obj){
        return tUserDao.selectTUserByObj(obj);
    }
    @Override
    public TUser selectTUserById(Long id){
        return tUserDao.selectTUserById(id);
    }
    @Override
    public int insertTUser(TUser value){
        return tUserDao.insertTUser(value);
    }
    @Override
    public int insertNonEmptyTUser(TUser value){
        return tUserDao.insertNonEmptyTUser(value);
    }
    @Override
    public int insertTUserByBatch(List<TUser> value){
        return tUserDao.insertTUserByBatch(value);
    }
    @Override
    public int deleteTUserById(Long id){
        return tUserDao.deleteTUserById(id);
    }
    @Override
    public int updateTUserById(TUser enti){
        return tUserDao.updateTUserById(enti);
    }
    @Override
    public int updateNonEmptyTUserById(TUser enti){
        return tUserDao.updateNonEmptyTUserById(enti);
    }

    public TUserDao getTUserDao() {
        return this.tUserDao;
    }

    public void setTUserDao(TUserDao tUserDao) {
        this.tUserDao = tUserDao;
    }

}