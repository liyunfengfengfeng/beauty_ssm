package com.yingjun.ssm.dao;
import com.yingjun.ssm.entity.TUser;
import java.util.List;
public interface TUserDao{
	/**
	 * 获得TUser数据的总行数
	 * @return
	 */
    long getTUserRowCount();
	/**
	 * 获得TUser数据集合
	 * @return
	 */
    List<TUser> selectTUser();
	/**
	 * 获得一个TUser对象,以参数TUser对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    TUser selectTUserByObj(TUser obj);
	/**
	 * 通过TUser的id获得TUser对象
	 * @param id
	 * @return
	 */
    TUser selectTUserById(Long id);
	/**
	 * 插入TUser到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertTUser(TUser value);
	/**
	 * 插入TUser中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyTUser(TUser value);
	/**
	 * 批量插入TUser到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertTUserByBatch(List<TUser> value);
	/**
	 * 通过TUser的id删除TUser
	 * @param id
	 * @return
	 */
    int deleteTUserById(Long id);
	/**
	 * 通过TUser的id更新TUser中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateTUserById(TUser enti);
	/**
	 * 通过TUser的id更新TUser中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyTUserById(TUser enti);
}