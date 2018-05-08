package com.yingjun.ssm.web;


import com.yingjun.ssm.entity.IndividualCompanyEmployee;
import com.yingjun.ssm.entity.LimitCompanyEmployee;
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


/**
 * 个人独资
 * @author liyunfeng
 */
@Controller
@RequestMapping("/individual")
public class IndividualController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private RegisterCompanyService registerCompanyService;
	@Autowired
	private UserService userService;
	/**
	 * 到达个人独资注册页面
	 * @return
	 */
	@RequestMapping(value = "/toIndividual")
	public String toIndividual(HttpSession session,Model view) {
		String email = (String)session.getAttribute("email");
		if(email == null){
			return "redirect:/user/login";
		}
		return "/individual/individual";
	}

	/**
	 * 保存个人独资公司信息
	 * @return
	 */
	@RequestMapping(value = "/saveIndividualCompany")
	public String saveLimitCompany(RegisterCompany registerCompany,
								   Model view,
								   HttpSession session) {
		try {
			LOG.info("接受到的用户ID是    ：" + registerCompany);
			String email = (String)session.getAttribute("email");
			if(email == null){
				return "/user/userLogin";
			}
			User user = userService.queryUserByEmail(email);
			registerCompany.setUserId(user.getId().toString().trim());
			registerCompanyService.saveIndividualCompanyInfo(registerCompany);
			view.addAttribute("companyName",registerCompany.getCompanyName());
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.deleteUser.Exception",e);
		}
		return "/individual/individual_principal";
	}
	/**
	 * 保存个人独资公司人员信息
	 * @return
	 */
	@RequestMapping(value = "/saveIndividualCompanyEmployeeInfos")
	public String saveLimitCompanyEmployeeInfos(String companyName,
												IndividualCompanyEmployee individualCompanyEmployee,
												Model view,
												HttpSession session) {
		try {
			LOG.info("接受到的用户ID是    ：" + individualCompanyEmployee);
			String email = (String)session.getAttribute("email");
			if(email == null){
				return "/user/userLogin";
			}
			view.addAttribute("email",email);
			registerCompanyService.saveIndividualCompanyEmployeeInfo(individualCompanyEmployee,companyName);
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.saveLimitCompanyEmployeeInfos.Exception",e);
		}
		return "/individual/inquiry";
	}
}
