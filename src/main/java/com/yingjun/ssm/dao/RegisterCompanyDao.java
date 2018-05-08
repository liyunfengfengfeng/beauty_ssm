package com.yingjun.ssm.dao;
import com.yingjun.ssm.entity.LimitCompanyEmployee;
import com.yingjun.ssm.entity.PartnerCompany;
import com.yingjun.ssm.entity.RegisterCompany;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface RegisterCompanyDao{
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
	 * 批量插入RegisterCompany到数据库,包括null值
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
	 * 有限公司注册
	 * @param registerCompany
	 * @return
	 */
	public int insertLimitCompanyInfo(RegisterCompany registerCompany);

	/**
	 * 检查公司名称是否重复
	 * @param companyName
	 * @return
	 */
    public int checkCompanyNameRepeat(@Param("companyName") String companyName);

	/**
	 * 查询注册公司信息通过公司名称
	 * @param limitCompanyName
	 * @return
	 */
    public RegisterCompany selectRegisterCompanyByName(@Param("companyName") String limitCompanyName);

	/**
	 * 添加个人独资公司
	 * @param registerCompany
	 * @return
	 */
    public int insertIndividualCompanyInfo(RegisterCompany registerCompany);

	/**
	 * 添加合伙企业公司信息
	 * @param partnerCompany
	 * @return
	 */
    public int insertPartnerCompanyInfo(PartnerCompany partnerCompany);

	/**
	 * 通过公司名称 公司类型查询公司信息
	 * @param companyName
	 * @param companyType
	 * @return
	 */
    public List<RegisterCompany> searchCompanysListByCondition(@Param("companyName") String companyName,
															   @Param("companyType") Integer companyType);

	/**
	 * 通过条件查询公司信息 并加入分页信息
	 * @param companyName
	 * @param companyType
	 * @param start
	 * @param end
	 * @return
	 */
	public List<RegisterCompany> searchCompanysListByConditionLimit(@Param("companyName") String companyName,
																	@Param("companyType") Integer companyType,
																	@Param("start") int start,
																	@Param("end") int end);

	/**
	 * 通过公司id查询公司信息
	 * @param companyId
	 * @return
	 */
    public RegisterCompany queryCompanyInfoById(@Param("companyId") String companyId);

	/**
	 * 通过公司id查询查询有限公司的员工信息
	 * @param companyId
	 * @return
	 */
	public List<LimitCompanyEmployee> queryLimitCompanyEmployeeInfoByCompanyId(String companyId);

	/**
	 * 审核公司通过
	 * @param companyName
	 * @return
	 */
    public int companyPass(@Param("companyName") String companyName);

	/**
	 * 审核公司驳回
	 * @param companyName
	 * @return
	 */
	public int companyReject(@Param("companyName") String companyName);

	/**
	 * 通过UserId查询用户的注册所有公司
	 * @param userId
	 * @return
	 */
    public List<RegisterCompany> queryCompanyInfoByUserId(@Param("userId") Long userId);
}