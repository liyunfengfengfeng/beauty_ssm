package com.yingjun.ssm.web;


import com.yingjun.ssm.entity.RegisterCompany;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.service.RegisterCompanyService;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * 企业中心
 * @author liyunfeng
 */
@Controller
@RequestMapping("/enterpriseCenter")
public class EnterpriseCenterController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	@Autowired
	private RegisterCompanyService registerCompanyService;
	/**
	 * toEnterpriseCenter
	 * @return
	 */
	@RequestMapping(value = "/toEnterpriseCenter")
	public String toEnterpriseCenter(HttpSession session,
									 Model view) {
		String email = (String)session.getAttribute("email");
		if(email == null){
			return "redirect:/user/login";
		}
		User user = userService.queryUserByEmail(email);
		List<RegisterCompany> registerCompanyList = registerCompanyService.queryCompanyInfoByUserId(user.getId());
		view.addAttribute("email",email);
		view.addAttribute("registerCompanyList",registerCompanyList);
		return "/common/enterprise";
	}

}
