package com.yingjun.ssm.web;



import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


/**
 * 管理员
 * @author liyunfeng
 */
@Controller
@RequestMapping("/adminUser")
public class AdminUserController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达普通用户管理页面
	 * @return
	 */
	@RequestMapping(value = "/toUserOperate")
	public String login() {
		return "/admin/searchList";
	}
	/**
	 * 用户登录
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(User user,
					 Model view) {
		try {
			LOG.info("接受到的数据是    ：" + user);
			List<User> userList = userService.searchUserListByCondition(user);
			view.addAttribute("userList",userList);
		} catch (Exception e) {
			throw new RuntimeException("依据条件查询普通用户出现的异常");
		}
		return "/admin/searchList";
	}



}
