package com.yingjun.ssm.web;


import com.google.gson.Gson;
import com.yingjun.ssm.dto.BaseResult;
import com.yingjun.ssm.entity.LimitCompanyEmployee;
import com.yingjun.ssm.entity.RegisterCompany;
import com.yingjun.ssm.entity.TOpreatorUser;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.enums.ResultEnum;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.RegisterCompanyService;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


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
	/**
	 * 保存有限公司信息
	 * @return
	 */
	@RequestMapping(value = "/saveLimitCompany")
	public String saveLimitCompany(RegisterCompany registerCompany,
                                   Model view,
                                   HttpSession session) {
		try {
			LOG.info("接受到的用户ID是    ：" + registerCompany);
			//email里的值是用户名

			String email = (String)session.getAttribute("email");
			if(email == null){
				return "/user/userLogin";
			}
            User user = userService.queryUserByEmail(email);
            registerCompany.setUserId(user.getId().toString().trim());
			registerCompanyService.saveLimitCompanyInfo(registerCompany);
			view.addAttribute("companyName",registerCompany.getCompanyName());
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.deleteUser.Exception",e);
		}
		return "/limitCompany/limitCompany_principal";
	}
	/**
	 * 保存有限公司人员信息
	 * @return
	 */
	@RequestMapping(value = "/saveLimitCompanyEmployeeInfos")
	public String saveLimitCompanyEmployeeInfos(String limitCompanyName,
												LimitCompanyEmployee limitCompanyEmployee,
												Model view,
												HttpSession session) {
		try {
			LOG.info("接受到的用户ID是    ：" + limitCompanyEmployee);
			String email = (String)session.getAttribute("email");
			if(email == null){
				return "/user/userLogin";
			}
			registerCompanyService.saveLimitCompanyEmployeeInfo(limitCompanyEmployee,limitCompanyName);
		} catch (Exception e) {
			throw new RuntimeException("LimitCompanyController.saveLimitCompanyEmployeeInfos.Exception",e);
		}
		return "/limitCompany/inquiry";
	}

	/**
	 * 用户登录
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/checkCompanyName",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> checkCompanyName(String companyName) {
		try {
			Gson gson = new Gson();
			registerCompanyService.checkCompanyNameRepeat(companyName);
		}catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.REPEATE_USER.getMsg());
		}
		return new BaseResult<>(true, "公司名称可以使用");
	}
}
