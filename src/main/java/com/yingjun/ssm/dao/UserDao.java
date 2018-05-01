package com.yingjun.ssm.dao;
import com.yingjun.ssm.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @author liyunfeng
 * 普通用户
 */
public interface UserDao {
	/**
	 * 获得TUser数据的总行数
	 * @return
	 */
    public long getTUserRowCount();
	/**
	 * 获得TUser数据集合
	 * @return
	 */
    public List<User> selectTUser();
	/**
	 * 获得一个TUser对象,以参数TUser对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    public User selectTUserByObj(User obj);
	/**
	 * 通过TUser的id获得TUser对象
	 * @param id
	 * @return
	 */
    public User selectTUserById(Long id);
	/**
	 * 插入TUser到数据库,包括null值
	 * @param value
	 * @return
	 */
    public int insertTUser(User value);
	/**
	 * 插入TUser中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    public int insertNonEmptyTUser(User value);
	/**
	 * 批量插入TUser到数据库,包括null值
	 * @param value
	 * @return
	 */
    public int insertTUserByBatch(List<User> value);
	/**
	 * 通过TUser的id删除TUser
	 * @param id
	 * @return
	 */
    public int deleteTUserById(Long id);
	/**
	 * 通过TUser的id更新TUser中的数据,包括null值
	 * @param enti
	 * @return
	 */
    public int updateTUserById(User enti);
	/**
	 * 通过TUser的id更新TUser中属性不为null的数据
	 * @param enti
	 * @return
	 */
    public int updateNonEmptyTUserById(User enti);

	/**
	 * 普通用户登录
	 * @param user 邮箱以及密码
	 * @return
	 */
    public User checkUserLogin(User user);

	/**
	 * 根据邮箱查询当前登录用户
	 * @param email
	 * @return
	 */
    public User queryUserByEmail(String email);

	/**
	 * 根据条件查询普通用户信息
	 * @param user
	 * @return
	 */
	public List<User> selectUsersByCondition(User user);
	/**
	 * 不加limit查询符合条件的总记录数
	 * @param user
	 * @return
	 */
	public List<User> selectUsersByConditionNoLimit(User user);

	/**
	 * 通过邮箱查询用户信息
	 * @param userEmail
	 * @return
	 */
    public User queryUserByEmails(String userEmail);

	/**
	 * 通过用户名称查询用户信息
	 * @param name
	 * @return
	 */
	public User queryUserByUserName(@Param("name") String name);
}