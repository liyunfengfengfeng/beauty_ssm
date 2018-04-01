package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.TOpreatorUserDao;
import com.yingjun.ssm.entity.TOpreatorUser;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.TOpreatorUserService;
import com.yingjun.ssm.util.Md5Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 管理员
 * @author liyunfeng
 */
@Service
public class TOpreatorUserServiceImpl implements TOpreatorUserService{
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TOpreatorUserDao tOpreatorUserDao;
    @Override
    public long getTOpreatorUserRowCount(){
        return tOpreatorUserDao.getTOpreatorUserRowCount();
    }
    @Override
    public List<TOpreatorUser> selectTOpreatorUser(){
        return tOpreatorUserDao.selectTOpreatorUser();
    }
    @Override
    public TOpreatorUser selectTOpreatorUserByObj(TOpreatorUser obj){
        return tOpreatorUserDao.selectTOpreatorUserByObj(obj);
    }
    @Override
    public TOpreatorUser selectTOpreatorUserById(Long id){
        return tOpreatorUserDao.selectTOpreatorUserById(id);
    }
    @Override
    public int insertTOpreatorUser(TOpreatorUser value){
        return tOpreatorUserDao.insertTOpreatorUser(value);
    }
    @Override
    public int insertNonEmptyTOpreatorUser(TOpreatorUser value){
        return tOpreatorUserDao.insertNonEmptyTOpreatorUser(value);
    }
    @Override
    public int insertTOpreatorUserByBatch(List<TOpreatorUser> value){
        return tOpreatorUserDao.insertTOpreatorUserByBatch(value);
    }
    @Override
    public int deleteTOpreatorUserById(Long id){
        return tOpreatorUserDao.deleteTOpreatorUserById(id);
    }
    @Override
    public int updateTOpreatorUserById(TOpreatorUser enti){
        return tOpreatorUserDao.updateTOpreatorUserById(enti);
    }
    @Override
    public int updateNonEmptyTOpreatorUserById(TOpreatorUser enti){
        return tOpreatorUserDao.updateNonEmptyTOpreatorUserById(enti);
    }

    /**
     * 处理管理员登录
     * @param opreatorUser 管理员登录相关信息
     */
    @Override
    public TOpreatorUser checkAdminLogin(TOpreatorUser opreatorUser) {
        try{
            //加密密码
            opreatorUser.setOperatorPassword(Md5Util.md5Password(opreatorUser.getOperatorPassword()));
            TOpreatorUser tOpreatorUser = tOpreatorUserDao.queryAdminInfo(opreatorUser);
            if(tOpreatorUser == null){
                throw new BizException("用户名或密码错误");
            }
            return tOpreatorUser;
        }catch (BizException biz){
            throw new BizException("用户名或密码错误",biz);
        }catch (Exception e){
            throw new RuntimeException("登录出现异常",e);
        }
    }

    public TOpreatorUserDao getTOpreatorUserDao() {
        return this.tOpreatorUserDao;
    }

    public void setTOpreatorUserDao(TOpreatorUserDao tOpreatorUserDao) {
        this.tOpreatorUserDao = tOpreatorUserDao;
    }

}