package com.yingjun.ssm.web;


import com.google.gson.Gson;
import com.yingjun.ssm.dto.BaseResult;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.enums.ResultEnum;
import com.yingjun.ssm.exception.BizException;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * 忘记密码找回密码
 * @author liyunfeng
 */
@Controller
@RequestMapping("/find")
public class FindPwdController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达用户找回密码页面
	 * @return
	 */
	@RequestMapping(value = "/toFindPwd")
	public String toFindPwd() {
		return "/user/findPwd";
	}

    /**
     * 找回密码
     * @return
     */
    @ResponseBody
	@RequestMapping(value = "/findPwd",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> userLogin(User user,String code,HttpSession session) {
		try {
			LOG.info("用户信息  " + user);
			LOG.info("用户输入的验证码  " + code);
			userService.updatePasswordByEmail(user,code,session);
		} catch (BizException e) {
			return new BaseResult<>(false, e.getMessage());
		} catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.INVALID_USER.getMsg());
		}
		return new BaseResult<>(true, "修改成功");
	}

	/**
	 * 到达用户修改密码页面
	 * @return
	 */
	@RequestMapping(value = "/updatePwd")
	public String updatePwd(HttpSession session,
                            Model view) {
        String email = (String)session.getAttribute("email");
        if(email == null){
            return "redirect:/user/login";
        }
        view.addAttribute("email",email);
	    return "/user/changePwd";
	}

	/**
	 * 用户修改密码
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/updateOldPwd",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> updateOldPwd(@RequestParam String oldPwd,
										   @RequestParam String newPwd,
										   @RequestParam String pwdA,
										   HttpSession session,
										   HttpServletRequest request,
										   HttpServletResponse response) {
		try {
			String email = (String)session.getAttribute("email");
			if(email == null){
				response.sendRedirect("/user/login");
			}
			userService.updatePasswordByName(email,newPwd,oldPwd);
		} catch (BizException e) {
			return new BaseResult<>(false, e.getMessage());
		} catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.INVALID_USER.getMsg());
		}
		return new BaseResult<>(true, "修改成功");
	}
}
