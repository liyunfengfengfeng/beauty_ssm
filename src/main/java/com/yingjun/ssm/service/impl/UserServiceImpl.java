package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.UserDao;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author liyunfeng
 * 普通用户
 */
@Service
public class UserServiceImpl implements UserService {
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());
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

    /**
     * 校验用户登录
     * @param user 用户邮箱 以及密码
     */
    @Override
    public User checkUserLogin(User user) {
        try{
            User loginUser = userDao.checkUserLogin(user);
            if(loginUser == null){
                throw new BizException("用户不存在");
            }
            return loginUser;
        }catch (BizException biz){
            LOG.error("用户名或密码错误",biz);
            throw new BizException("用户名或密码错误");
        }catch (Exception e){
            LOG.error("登录出现异常",e);
            throw new BizException("登录出现异常");
        }

    }

    public UserDao getTUserDao() {
        return this.userDao;
    }

    public void setTUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

}