package com.yingjun.ssm.service;
import java.util.List;
import com.yingjun.ssm.entity.TOpreatorUser;
/**
 * 管理员
 * @author liyunfeng
 */
public interface TOpreatorUserService{
	/**
	 * 获得TOpreatorUser数据的总行数
	 * @return
	 */
    public long getTOpreatorUserRowCount();
	/**
	 * 获得TOpreatorUser数据集合
	 * @return
	 */
    public List<TOpreatorUser> selectTOpreatorUser();
	/**
	 * 获得一个TOpreatorUser对象,以参数TOpreatorUser对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    public TOpreatorUser selectTOpreatorUserByObj(TOpreatorUser obj);
	/**
	 * 通过TOpreatorUser的id获得TOpreatorUser对象
	 * @param id
	 * @return
	 */
    public TOpreatorUser selectTOpreatorUserById(Long id);
	/**
	 * 插入TOpreatorUser到数据库,包括null值
	 * @param value
	 * @return
	 */
    public int insertTOpreatorUser(TOpreatorUser value);
	/**
	 * 插入TOpreatorUser中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    public int insertNonEmptyTOpreatorUser(TOpreatorUser value);
	/**
	 * 批量插入TOpreatorUser到数据库
	 * @param value
	 * @return
	 */
    public int insertTOpreatorUserByBatch(List<TOpreatorUser> value);
	/**
	 * 通过TOpreatorUser的id删除TOpreatorUser
	 * @param id
	 * @return
	 */
    public int deleteTOpreatorUserById(Long id);
	/**
	 * 通过TOpreatorUser的id更新TOpreatorUser中的数据,包括null值
	 * @param enti
	 * @return
	 */
    public int updateTOpreatorUserById(TOpreatorUser enti);
	/**
	 * 通过TOpreatorUser的id更新TOpreatorUser中属性不为null的数据
	 * @param enti
	 * @return
	 */
    public int updateNonEmptyTOpreatorUserById(TOpreatorUser enti);

	/**
	 * 处理管理员登录
	 * @param opreatorUser
	 */
	public TOpreatorUser checkAdminLogin(TOpreatorUser opreatorUser);
}