package com.yingjun.ssm.web;


import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 合伙企业
 * @author liyunfeng
 */
@Controller
@RequestMapping("/partnerShip")
public class PartnerShipController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达合伙企业注册页面
	 * @return
	 */
	@RequestMapping(value = "/toPartnerShip")
	public String toPartnerShip() {
		return "/partnership/parntership";
	}
}
