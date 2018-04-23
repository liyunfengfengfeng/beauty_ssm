package com.yingjun.ssm.service;
import java.util.List;
import com.yingjun.ssm.entity.User;

import javax.servlet.http.HttpSession;

/**
 * @author liyunfeng
 * 增加必要注释
 */
public interface UserService {
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
	 * 批量插入TUser到数据库
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
	 * 校验用户登录
	 * 根据邮箱 密码查询用户信息
	 * @param user 用户邮箱 以及密码
	 * return 当前用户
	 */
	public User checkUserLogin(User user);

	/**
	 * 处理用户注册
	 * @param user
	 */
    public void userRegister(User user, String code, HttpSession session);

	/**
	 * 检查用户是否已经注册
	 * @param email
	 * @return
	 */
	public User queryUserByEmail(String email);

	/**
	 * 根据邮箱修改用户密码
	 * @param user 用户信息
	 * @param code 验证码
	 * @param session 存储系统发送的验证码
	 */
    public void updatePasswordByEmail(User user, String code, HttpSession session);

	/**
	 * 根据条件查询普通用户信息
	 * @param user
	 * @return
	 */
    public List<User> searchUserListByConditionLimit(User user);

	/**
	 * 不加limit查询符合条件的总记录数
	 * @param user
	 * @return
	 */
	public List<User> searchUserListByCondition(User user);

	/**
	 * 保存用户
	 * @param user
	 */
    public void saveUser(User user);

	/**
	 * 通过用户ID删除用户信息
	 * @param userId
	 */
    public void deleteUser(Integer userId);

	/**
	 * 通过用户ID查询用户信息
	 * @param userEmail
	 * @return
	 */
	public User queryUserById(String userEmail);
}