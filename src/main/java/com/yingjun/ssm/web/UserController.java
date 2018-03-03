package com.yingjun.ssm.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping("/user")
public class UserController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	


	@RequestMapping(value = "/userLogin", method = RequestMethod.GET)
	public String userLogin(Model model, Integer offset, Integer limit) {
		LOG.info("invoke----------/user/list");
		return "/user/userLogin";
	}
	@RequestMapping(value = "/userRegister", method = RequestMethod.GET)
	public String userRegister(Model model, Integer offset, Integer limit) {
		LOG.info("invoke----------/user/list");
		return "/user/userResgiter";
	}
}
