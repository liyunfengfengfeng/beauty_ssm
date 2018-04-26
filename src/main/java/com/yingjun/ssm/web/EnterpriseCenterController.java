package com.yingjun.ssm.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


/**
 * 企业中心
 * @author liyunfeng
 */
@Controller
@RequestMapping("/enterpriseCenter")
public class EnterpriseCenterController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	/**
	 * toEnterpriseCenter
	 * @return
	 */
	@RequestMapping(value = "/toEnterpriseCenter")
	public String toEnterpriseCenter(HttpSession session,
									 Model view) {
		String email = (String)session.getAttribute("email");
		view.addAttribute("email",email);
		return "/common/enterprise";
	}

}
