package com.yingjun.ssm.service.impl;
import java.util.List;
import com.yingjun.ssm.dao.CompanyEmployeeDao;
import com.yingjun.ssm.entity.CompanyEmployee;
import com.yingjun.ssm.service.CompanyEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyEmployeeServiceImpl implements CompanyEmployeeService{
    @Autowired
    private CompanyEmployeeDao companyEmployeeDao;
    @Override
    public long getCompanyEmployeeRowCount(){
        return companyEmployeeDao.getCompanyEmployeeRowCount();
    }
    @Override
    public List<CompanyEmployee> selectCompanyEmployee(){
        return companyEmployeeDao.selectCompanyEmployee();
    }
    @Override
    public CompanyEmployee selectCompanyEmployeeByObj(CompanyEmployee obj){
        return companyEmployeeDao.selectCompanyEmployeeByObj(obj);
    }
    @Override
    public CompanyEmployee selectCompanyEmployeeById(Long id){
        return companyEmployeeDao.selectCompanyEmployeeById(id);
    }
    @Override
    public int insertCompanyEmployee(CompanyEmployee value){
        return companyEmployeeDao.insertCompanyEmployee(value);
    }
    @Override
    public int insertNonEmptyCompanyEmployee(CompanyEmployee value){
        return companyEmployeeDao.insertNonEmptyCompanyEmployee(value);
    }
    @Override
    public int insertCompanyEmployeeByBatch(List<CompanyEmployee> value){
        return companyEmployeeDao.insertCompanyEmployeeByBatch(value);
    }
    @Override
    public int deleteCompanyEmployeeById(Long id){
        return companyEmployeeDao.deleteCompanyEmployeeById(id);
    }
    @Override
    public int updateCompanyEmployeeById(CompanyEmployee enti){
        return companyEmployeeDao.updateCompanyEmployeeById(enti);
    }
    @Override
    public int updateNonEmptyCompanyEmployeeById(CompanyEmployee enti){
        return companyEmployeeDao.updateNonEmptyCompanyEmployeeById(enti);
    }

    public CompanyEmployeeDao getCompanyEmployeeDao() {
        return this.companyEmployeeDao;
    }

    public void setCompanyEmployeeDao(CompanyEmployeeDao companyEmployeeDao) {
        this.companyEmployeeDao = companyEmployeeDao;
    }

}