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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 联系我们
 * @author liyunfeng
 */
@Controller
@RequestMapping("/contactUs")
public class ContactUsController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达用户联系我们页面页面
	 * @return
	 */
	@RequestMapping(value = "/connection")
	public String login() {
		return "/contactUs/contactUs";
	}
}
