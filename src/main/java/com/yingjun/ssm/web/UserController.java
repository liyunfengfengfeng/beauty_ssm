package com.yingjun.ssm.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 * 用户
 * @author 包
 */
@Controller
@RequestMapping("/user")
public class UserController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    /**
     * 用户登录
     * @return
     */
	@RequestMapping(value = "/userLogin", method = RequestMethod.GET)
	public String userLogin() {
		LOG.info("用户登录");
		return "/user/userLogin";
	}

    /**
     * 用户注册
     * @return
     */
	@RequestMapping(value = "/userRegister", method = RequestMethod.GET)
	public String userRegister() {
		LOG.info("用户注册");
		return "/user/userResgiter";
	}
}
