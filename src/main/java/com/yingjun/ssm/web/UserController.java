package com.yingjun.ssm.web;


import com.yingjun.ssm.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


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
    @ResponseBody
	@RequestMapping(value = "/userLogin",produces="text/html;charset=UTF-8")
	public String userLogin(@ModelAttribute User user) {
		LOG.info("表单提交的用户信息：" + user.toString());
		return "登录成功";
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
