package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.RegisterCompanyDao;
import com.yingjun.ssm.entity.RegisterCompany;
import com.yingjun.ssm.service.RegisterCompanyService;
public class RegisterCompanyServiceImpl implements RegisterCompanyService{
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

    public RegisterCompanyDao getRegisterCompanyDao() {
        return this.registerCompanyDao;
    }

    public void setRegisterCompanyDao(RegisterCompanyDao registerCompanyDao) {
        this.registerCompanyDao = registerCompanyDao;
    }

}