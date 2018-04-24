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
import org.springframework.web.bind.annotation.RequestParam;


/**
 * 有限公司
 * @author liyunfeng
 */
@Controller
@RequestMapping("/limitCompany")
public class LimitCompanyController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private RegisterCompanyService registerCompanyService;
	/**
	 * 到达有限公司注册页面
	 * @return
	 */
	@RequestMapping(value = "/toLimitCompany")
	public String toLimitCompany() {
		return "/limitCompany/limitCompany";
	}
	/**
	 * 保存有限公司信息
	 * @return
	 */
	@RequestMapping(value = "/saveLimitCompany")
	public String saveLimitCompany(RegisterCompany registerCompany, Model view) {
		try {
			LOG.info("接受到的用户ID是    ：" + registerCompany);
			registerCompanyService.saveLimitCompanyInfo(registerCompany);
			view.addAttribute("view",view);
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.deleteUser.Exception",e);
		}
		return null;
	}
}
