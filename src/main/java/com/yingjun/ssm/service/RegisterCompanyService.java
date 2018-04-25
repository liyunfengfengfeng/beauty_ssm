package com.yingjun.ssm.service;
import java.util.List;

import com.yingjun.ssm.entity.LimitCompanyEmployee;
import com.yingjun.ssm.entity.RegisterCompany;
import org.springframework.stereotype.Service;

public interface RegisterCompanyService{
	/**
	 * 获得RegisterCompany数据的总行数
	 * @return
	 */
    long getRegisterCompanyRowCount();
	/**
	 * 获得RegisterCompany数据集合
	 * @return
	 */
    List<RegisterCompany> selectRegisterCompany();
	/**
	 * 获得一个RegisterCompany对象,以参数RegisterCompany对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    RegisterCompany selectRegisterCompanyByObj(RegisterCompany obj);
	/**
	 * 通过RegisterCompany的id获得RegisterCompany对象
	 * @param id
	 * @return
	 */
    RegisterCompany selectRegisterCompanyById(Long id);
	/**
	 * 插入RegisterCompany到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertRegisterCompany(RegisterCompany value);
	/**
	 * 插入RegisterCompany中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyRegisterCompany(RegisterCompany value);
	/**
	 * 批量插入RegisterCompany到数据库
	 * @param value
	 * @return
	 */
    int insertRegisterCompanyByBatch(List<RegisterCompany> value);
	/**
	 * 通过RegisterCompany的id删除RegisterCompany
	 * @param id
	 * @return
	 */
    int deleteRegisterCompanyById(Long id);
	/**
	 * 通过RegisterCompany的id更新RegisterCompany中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateRegisterCompanyById(RegisterCompany enti);
	/**
	 * 通过RegisterCompany的id更新RegisterCompany中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyRegisterCompanyById(RegisterCompany enti);

	/**
	 * 工商注册保存有限公司信息
	 * @param registerCompany
	 */
	public void saveLimitCompanyInfo(RegisterCompany registerCompany);

	public void saveLimitCompanyEmployeeInfo(LimitCompanyEmployee limitCompanyEmployee,String limitCompanyName);

	/**
	 * 检查公司名称是否重复
	 * @param companyName
	 */
    public void checkCompanyNameRepeat(String companyName);

	/**
	 * 保存个人独资公司信息
	 * @param registerCompany
	 */
    public void saveIndividualCompanyInfo(RegisterCompany registerCompany);
}