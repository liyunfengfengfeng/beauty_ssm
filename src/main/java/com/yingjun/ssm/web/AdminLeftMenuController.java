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
 * 管理员左部菜单增加跳转
 * @author liyunfeng
 */
@Controller
@RequestMapping("/admin")
public class AdminLeftMenuController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

	/**
	 * 简洁模板
	 * @return
	 */
	@RequestMapping(value = "/jianjiemoban")
	public String jianjiemoban() {
		return "/admin/index";
	}

	/**
	 * 区块模板
	 * @return
	 */
	@RequestMapping(value = "/qukuaimoban")
	public String qukuaimoban() {
		return "/admin/default";
	}

	/**
	 * 添加编辑
	 * @return
	 */
	@RequestMapping(value = "/tianjiabianji")
	public String tianjiabianji() {
		return "/admin/form";
	}
	/**
	 * Tab页
	 * @return
	 */
	@RequestMapping(value = "/tab")
	public String tab() {
		return "/admin/tab";
	}

	/**
	 * 404页面
	 * @return
	 */
	@RequestMapping(value = "/error")
	public String error() {
		return "/admin/error";
	}

	/**
	 * 登陆页面
	 * @return
	 */
	@RequestMapping(value = "/loginPage")
	public String loginPage() {
		return "/admin/login";
	}
}
