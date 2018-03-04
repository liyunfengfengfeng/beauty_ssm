package com.yingjun.ssm.service;
import java.util.List;
import com.yingjun.ssm.entity.User;
public interface UserService {
	/**
	 * 获得TUser数据的总行数
	 * @return
	 */
    long getTUserRowCount();
	/**
	 * 获得TUser数据集合
	 * @return
	 */
    List<User> selectTUser();
	/**
	 * 获得一个TUser对象,以参数TUser对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    User selectTUserByObj(User obj);
	/**
	 * 通过TUser的id获得TUser对象
	 * @param id
	 * @return
	 */
    User selectTUserById(Long id);
	/**
	 * 插入TUser到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertTUser(User value);
	/**
	 * 插入TUser中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyTUser(User value);
	/**
	 * 批量插入TUser到数据库
	 * @param value
	 * @return
	 */
    int insertTUserByBatch(List<User> value);
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
    int updateTUserById(User enti);
	/**
	 * 通过TUser的id更新TUser中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyTUserById(User enti);
}