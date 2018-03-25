package com.yingjun.ssm.web;


import com.google.gson.Gson;
import com.yingjun.ssm.dto.BaseResult;
import com.yingjun.ssm.entity.TOpreatorUser;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.enums.ResultEnum;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.TOpreatorUserService;
import com.yingjun.ssm.service.UserService;
import com.yingjun.ssm.util.CodeUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


/**
 * 管理员
 * @author liyunfeng
 */
@Controller
@RequestMapping("/admin")
public class AdminLoginController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private TOpreatorUserService tOpreatorUserService;
	/**
	 * 到达管理员登录页面
	 * @return
	 */
	@RequestMapping(value = "/login")
	public String login() {
		return "/admin/adminLogin";
	}
	/**
	 * 用户登录
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/adminLogin",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> adminLogin(TOpreatorUser opreatorUser,
										HttpSession session) {
		try {
			tOpreatorUserService.checkAdminLogin(opreatorUser);
			session.setAttribute("email",opreatorUser.getEmail());
		} catch (BizException e) {
			return new BaseResult<>(false, e.getMessage());
		} catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.INVALID_USER.getMsg());
		}
		return new BaseResult<>(true, "登陆成功");
	}

	/**
	 * 管理员登录成功
	 * @return
	 */
	@RequestMapping(value = "/adminLoginSuccess")
	public String adminLoginSuccess() {
		return "/admin/success";
	}

}
