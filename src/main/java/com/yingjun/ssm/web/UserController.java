package com.yingjun.ssm.web;


import com.google.gson.Gson;
import com.yingjun.ssm.dto.BaseResult;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.enums.ResultEnum;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.UserService;
import com.yingjun.ssm.util.CodeUtil;
import com.yingjun.ssm.util.LoginContext;
import com.yingjun.ssm.util.MailUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;


/**
 * 用户
 * @author liyunfeng
 */
@Controller
@RequestMapping("/user")
public class UserController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达用户登录页面
	 * @return
	 */
	@RequestMapping(value = "/login")
	public String login() {
		return "/user/userLogin";
	}

    /**
     * 用户登录
     * @return
     */
    @ResponseBody
	@RequestMapping(value = "/userLogin",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> userLogin(User user,
										HttpSession session) {
		try {
			userService.checkUserLogin(user);
			//页面是以name="email" 接受用户名称的
			session.setAttribute("email",user.getEmail());
		} catch (BizException e) {
			return new BaseResult<>(false, e.getMessage());
		} catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.INVALID_USER.getMsg());
		}
		return new BaseResult<>(true, "登陆成功");
	}

    /**
     * 用户注册
     * @return
     */
	@RequestMapping(value = "/userRegister", method = RequestMethod.GET)
	public String userRegister() {
		LOG.info("用户注册");
		return "/user/userResgiter";
	}
	/**
	 * 处理用户注册
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/register")
	public Object register(User user,String code,HttpSession session) {
		Gson gson = new Gson();
		try {
			userService.userRegister(user,code,session);
		} catch (BizException e) {
			return gson.toJson(new BaseResult(false, e.getMessage()));
		} catch (Exception e) {
			return gson.toJson(new BaseResult(false, ResultEnum.INVALID_USER.getMsg()));
		}
		return gson.toJson(new BaseResult(true, ResultEnum.USER_REGISTER_SUCCESS.getMsg()));
	}
	/**
	 * 用户注册时获取邮箱验证码
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/getEmailCode",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> getEmailCode(@RequestParam String email,HttpSession session) {
		try {
			String code = CodeUtil.rand();
			System.out.println("code is " + code);
			//MailUtil.sendMail(email,code);
			session.setAttribute("code",code);
		} catch (BizException e) {
			return new BaseResult<>(false, e.getMessage());
		} catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.INVALID_USER.getMsg());
		}
		return new BaseResult<>(true, "登陆成功");
	}
	/**
	 * 用户登录成功到达首页
	 * @return
	 */
	@RequestMapping(value = "/home")
	public String home(Model view,
					   HttpSession session) {
		String email = (String)session.getAttribute("email");
		view.addAttribute("email",email);
		return "/common/home";
	}
}
