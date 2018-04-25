package com.yingjun.ssm.web;


import com.yingjun.ssm.entity.RegisterCompany;
import com.yingjun.ssm.service.RegisterCompanyService;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	private RegisterCompanyService registerCompanyService;
	/**
	 * 到达个人独资注册页面
	 * @return
	 */
	@RequestMapping(value = "/toIndividual")
	public String toIndividual() {
		return "/individual/individual";
	}

	/**
	 * 保存个人独资公司信息
	 * @return
	 */
	@RequestMapping(value = "/saveIndividualCompany")
	public String saveLimitCompany(RegisterCompany registerCompany, Model view) {
		try {
			LOG.info("接受到的用户ID是    ：" + registerCompany);
			registerCompanyService.saveIndividualCompanyInfo(registerCompany);
			view.addAttribute("companyName",registerCompany.getCompanyName());
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.deleteUser.Exception",e);
		}
		return "/limitCompany/limitCompany_principal";
	}
}
