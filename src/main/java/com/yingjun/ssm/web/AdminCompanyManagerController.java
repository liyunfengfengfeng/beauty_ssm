package com.yingjun.ssm.web;


import com.yingjun.ssm.dto.BaseResult;
import com.yingjun.ssm.entity.TOpreatorUser;
import com.yingjun.ssm.enums.ResultEnum;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.TOpreatorUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


/**
 * 后台公司管理
 * @author liyunfeng
 */
@Controller
@RequestMapping("/adminCompanyManager")
public class AdminCompanyManagerController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

	/**
	 * 到达管理员登录页面
	 * @return
	 */
	@RequestMapping(value = "/toCompanyManager")
	public String login() {
		return "/admin/companyList";
	}


}
