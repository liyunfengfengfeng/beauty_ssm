package com.yingjun.ssm.web;


import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 个人独资
 * @author liyunfeng
 */
@Controller
@RequestMapping("/individual")
public class IndividualController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达个人独资注册页面
	 * @return
	 */
	@RequestMapping(value = "/toIndividual")
	public String toIndividual() {
		return "/individual/individual";
	}
}
