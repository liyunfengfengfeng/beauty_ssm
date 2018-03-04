package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.UserDao;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author liyunfeng
 * 普通用户
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public long getTUserRowCount(){
        return userDao.getTUserRowCount();
    }
    @Override
    public List<User> selectTUser(){
        return userDao.selectTUser();
    }
    @Override
    public User selectTUserByObj(User obj){
        return userDao.selectTUserByObj(obj);
    }
    @Override
    public User selectTUserById(Long id){
        return userDao.selectTUserById(id);
    }
    @Override
    public int insertTUser(User value){
        return userDao.insertTUser(value);
    }
    @Override
    public int insertNonEmptyTUser(User value){
        return userDao.insertNonEmptyTUser(value);
    }
    @Override
    public int insertTUserByBatch(List<User> value){
        return userDao.insertTUserByBatch(value);
    }
    @Override
    public int deleteTUserById(Long id){
        return userDao.deleteTUserById(id);
    }
    @Override
    public int updateTUserById(User enti){
        return userDao.updateTUserById(enti);
    }
    @Override
    public int updateNonEmptyTUserById(User enti){
        return userDao.updateNonEmptyTUserById(enti);
    }

    public UserDao getTUserDao() {
        return this.userDao;
    }

    public void setTUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

}