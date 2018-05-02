package com.yingjun.ssm.web;


import com.yingjun.ssm.entity.*;
import com.yingjun.ssm.service.RegisterCompanyService;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


/**
 * 合伙企业
 * @author liyunfeng
 */
@Controller
@RequestMapping("/partnerShip")
public class PartnerShipController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private RegisterCompanyService registerCompanyService;
	@Autowired
	private UserService userService;
	/**
	 * 到达合伙企业注册页面
	 * @return
	 */
	@RequestMapping(value = "/toPartnerShip")
	public String toPartnerShip() {
		return "/partnership/partnership";
	}

	/**
	 * 保存合伙企业信息
	 * @return
	 */
	@RequestMapping(value = "/savePartnerCompany")
	public String savePartnerCompany(PartnerCompany partnerCompany,
									 Model view,
									 HttpSession session) {
		try {
			LOG.info("接受到的用户ID是    ：" + partnerCompany);
			String email = (String)session.getAttribute("email");
			if(email == null){
				return "/user/userLogin";
			}
			User user = userService.queryUserByEmail(email);
			partnerCompany.setUserId(user.getId().toString().trim());
			registerCompanyService.savePartnerCompany(partnerCompany);
			view.addAttribute("companyName",partnerCompany.getCompanyName());
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.saveLimitCompanyEmployeeInfos.Exception",e);
		}
		return "/partnership/partnership_principal";
	}
	/**
	 * 保存合伙企业公司人员信息
	 * @return
	 */
	@RequestMapping(value = "/savePartnerCompanyEmployeeInfos")
	public String savePartnerCompanyEmployeeInfos(String companyName,
												  PartnerCompanyEmployee partnerCompanyEmployee,
												  Model view,
												  HttpSession session) {
		try {
			LOG.info("接受到的用户ID是    ：" + partnerCompanyEmployee);
			String email = (String)session.getAttribute("email");
			if(email == null){
				return "/user/userLogin";
			}
			registerCompanyService.savePartnerCompanyEmployeeInfos(partnerCompanyEmployee,companyName);
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.saveLimitCompanyEmployeeInfos.Exception",e);
		}
		return "/individual/inquiry";
	}
}
