package com.yingjun.ssm.dao;
import com.yingjun.ssm.entity.CompanyEmployee;
import com.yingjun.ssm.entity.IndividualCompanyEmployee;
import com.yingjun.ssm.entity.LimitCompanyEmployee;
import com.yingjun.ssm.entity.PartnerCompanyEmployee;

import java.util.List;
public interface CompanyEmployeeDao{
	/**
	 * 获得CompanyEmployee数据的总行数
	 * @return
	 */
    long getCompanyEmployeeRowCount();
	/**
	 * 获得CompanyEmployee数据集合
	 * @return
	 */
    List<CompanyEmployee> selectCompanyEmployee();
	/**
	 * 获得一个CompanyEmployee对象,以参数CompanyEmployee对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    CompanyEmployee selectCompanyEmployeeByObj(CompanyEmployee obj);
	/**
	 * 通过CompanyEmployee的id获得CompanyEmployee对象
	 * @param id
	 * @return
	 */
    CompanyEmployee selectCompanyEmployeeById(Long id);
	/**
	 * 插入CompanyEmployee到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertCompanyEmployee(CompanyEmployee value);
	/**
	 * 插入CompanyEmployee中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyCompanyEmployee(CompanyEmployee value);
	/**
	 * 批量插入CompanyEmployee到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertCompanyEmployeeByBatch(List<CompanyEmployee> value);
	/**
	 * 通过CompanyEmployee的id删除CompanyEmployee
	 * @param id
	 * @return
	 */
    int deleteCompanyEmployeeById(Long id);
	/**
	 * 通过CompanyEmployee的id更新CompanyEmployee中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateCompanyEmployeeById(CompanyEmployee enti);
	/**
	 * 通过CompanyEmployee的id更新CompanyEmployee中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyCompanyEmployeeById(CompanyEmployee enti);

	/**
	 * 有限公司保存法人信息
	 * @param limitCompanyEmployee
	 * @return
	 */
    public int saveLegalPersonInfo(LimitCompanyEmployee limitCompanyEmployee);

	/**
	 * 保存有限公司财务负责人信息
	 * @param limitCompanyEmployee
	 * @return
	 */
	public int saveFinancePersonInfo(LimitCompanyEmployee limitCompanyEmployee);

	/**
	 * 有限公司保存股东信息
	 * @param limitCompanyEmployee
	 * @return
	 */
	public int saveGdPersonInfo(LimitCompanyEmployee limitCompanyEmployee);

	/**
	 * 有限公司保存经理信息
	 * @param limitCompanyEmployee
	 * @return
	 */
	public int saveJlPersonInfo(LimitCompanyEmployee limitCompanyEmployee);

	/**
	 * 保存有限公司董事信息
	 * @param limitCompanyEmployee
	 * @return
	 */
	public int saveDsPersonInfo(LimitCompanyEmployee limitCompanyEmployee);

	/**
	 * 有限公司保存监事信息
	 * @param limitCompanyEmployee
	 * @return
	 */
	public int saveJsPersonInfo(LimitCompanyEmployee limitCompanyEmployee);

	/**
	 * 保存个人独资公司的人员信息
	 * @param individualCompanyEmployee
	 * @return
	 */
    public int saveIndividualPersonInfo(IndividualCompanyEmployee individualCompanyEmployee);

	/**
	 * 保存合伙公司执行事务合伙人信息
	 * @param partnerCompanyEmployee
	 * @return
	 */
    public int saveExecuteEmployeeInfos(PartnerCompanyEmployee partnerCompanyEmployee);

	/**
	 * 保存委派代表人信息
	 * @param partnerCompanyEmployee
	 * @return
	 */
	public int saveRepresentEmployeeInfos(PartnerCompanyEmployee partnerCompanyEmployee);

	/**
	 * 保存财务负责人信息
	 * @param partnerCompanyEmployee
	 * @return
	 */
	public int saveFinanceEmployeeInfos(PartnerCompanyEmployee partnerCompanyEmployee);
}