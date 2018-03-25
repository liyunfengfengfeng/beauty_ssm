package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.UserDao;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.UserService;
import com.yingjun.ssm.util.Md5Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;

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
            //加密密码
            user.setPassword(Md5Util.md5Password(user.getPassword()));
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

    /**
     * 处理用户注册
     * @param user
     */
    @Transactional(propagation= Propagation.REQUIRED,isolation = Isolation.READ_COMMITTED,rollbackFor=Throwable.class)
    @Override
    public void userRegister(User user, String code,HttpSession session) {
        try{
            User user1 = queryUserByEmail(user.getEmail());
            if(user1 != null){
                throw new BizException("用户已经注册");
            }
            String emailCode = (String)session.getAttribute("code");
            if(!emailCode.equals(code)){
                throw new BizException("验证码错误");
            }
            //加密密码
            if(user!=null){
                user.setPassword(Md5Util.md5Password(user.getPassword()));
            }else{
                return;
            }
            if(1 != userDao.insertTUser(user)){
                throw new Exception("插入数据影响函数不唯一");
            }
        }catch (BizException biz){
            throw new BizException(biz.getMessage(),biz);
        }catch (Exception e){
            throw new RuntimeException("插入数据影响函数不唯一",e);
        }
    }

    public UserDao getTUserDao() {
        return this.userDao;
    }

    public void setTUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    /**
     * 检查用户是否已经注册
     * @param email
     * @return
     */
    @Override
    public User queryUserByEmail(String email){
        return userDao.queryUserByEmail(email);
    }

}