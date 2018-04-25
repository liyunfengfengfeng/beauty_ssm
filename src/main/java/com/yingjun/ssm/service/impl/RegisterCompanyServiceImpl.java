package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.RegisterCompanyDao;
import com.yingjun.ssm.entity.LimitCompanyEmployee;
import com.yingjun.ssm.entity.RegisterCompany;
import com.yingjun.ssm.service.RegisterCompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RegisterCompanyServiceImpl implements RegisterCompanyService{
    @Autowired
    private RegisterCompanyDao registerCompanyDao;
    @Override
    public long getRegisterCompanyRowCount(){
        return registerCompanyDao.getRegisterCompanyRowCount();
    }
    @Override
    public List<RegisterCompany> selectRegisterCompany(){
        return registerCompanyDao.selectRegisterCompany();
    }
    @Override
    public RegisterCompany selectRegisterCompanyByObj(RegisterCompany obj){
        return registerCompanyDao.selectRegisterCompanyByObj(obj);
    }
    @Override
    public RegisterCompany selectRegisterCompanyById(Long id){
        return registerCompanyDao.selectRegisterCompanyById(id);
    }
    @Override
    public int insertRegisterCompany(RegisterCompany value){
        return registerCompanyDao.insertRegisterCompany(value);
    }
    @Override
    public int insertNonEmptyRegisterCompany(RegisterCompany value){
        return registerCompanyDao.insertNonEmptyRegisterCompany(value);
    }
    @Override
    public int insertRegisterCompanyByBatch(List<RegisterCompany> value){
        return registerCompanyDao.insertRegisterCompanyByBatch(value);
    }
    @Override
    public int deleteRegisterCompanyById(Long id){
        return registerCompanyDao.deleteRegisterCompanyById(id);
    }
    @Override
    public int updateRegisterCompanyById(RegisterCompany enti){
        return registerCompanyDao.updateRegisterCompanyById(enti);
    }
    @Override
    public int updateNonEmptyRegisterCompanyById(RegisterCompany enti){
        return registerCompanyDao.updateNonEmptyRegisterCompanyById(enti);
    }

    /**
     * 工商注册保存有限公司信息
     * @param registerCompany
     */
    @Override
    public void saveLimitCompanyInfo(RegisterCompany registerCompany) {
        registerCompany.setBusinessScope("提供住所服务，场所租赁，代理企业工商登记，代理企业年报申报、税务申报，代理收递各类法律文件及代理申办其他各项法律手续，商务咨询服务，互联网技术咨询服务，网站建设技术服务，会务服务及其他商务秘书服务。代理记账；会计咨询；税务咨询；经济信息咨询（依法须经批准的项目，经相关部门批准后方可开展经营活动）");
        if(1 != registerCompanyDao.insertLimitCompanyInfo(registerCompany)){
            throw new RuntimeException("添加有限公司信息时影响行数不唯一");
        }
    }

    /**
     * 保存有限公司人员信息
     * @param limitCompanyEmployee
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = RuntimeException.class)
    public void saveLimitCompanyEmployeeInfo(LimitCompanyEmployee limitCompanyEmployee,String limitCompanyName) {
        //查询当前公司的信息

        //保存法人信息

        //保存财务负责人信息

        //保存股东信息

        //保存董事会信息

    }

    /**
     * 检查公司名称是否重复
     * @param companyName
     */
    @Override
    public void checkCompanyNameRepeat(String companyName) {
       int count = registerCompanyDao.checkCompanyNameRepeat(companyName);
        if(count != 0){
            throw new RuntimeException("公司名称重复");
        }
    }

    public RegisterCompanyDao getRegisterCompanyDao() {
        return this.registerCompanyDao;
    }

    public void setRegisterCompanyDao(RegisterCompanyDao registerCompanyDao) {
        this.registerCompanyDao = registerCompanyDao;
    }

}