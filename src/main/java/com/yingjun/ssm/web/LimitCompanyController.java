package com.yingjun.ssm.web;


import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 有限公司
 * @author liyunfeng
 */
@Controller
@RequestMapping("/limitCompany")
public class LimitCompanyController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达有限公司注册页面
	 * @return
	 */
	@RequestMapping(value = "/toLimitCompany")
	public String toLimitCompany() {
		return "/limitCompany/limitCompany";
	}
}
