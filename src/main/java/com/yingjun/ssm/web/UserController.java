package com.yingjun.ssm.web;


import com.yingjun.ssm.dto.BaseResult;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.enums.ResultEnum;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


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
	public BaseResult<Object> userLogin(User user) {
		try {
			userService.checkUserLogin(user);
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
	 * 用户登录成功到达首页
	 * @return
	 */
	@RequestMapping(value = "/home")
	public String home() {
		return "/common/home";
	}
}
