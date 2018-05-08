package com.yingjun.ssm.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


/**
 * 个人中心
 * @author liyunfeng
 */
@Controller
@RequestMapping("/personalCenter")
public class PersonalCenterController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	/**
	 * news1
	 * @return
	 */
	@RequestMapping(value = "/toPersonalCenter")
	public String toPersonalCenter(HttpSession session,
                                   Model view) {
        String email = (String)session.getAttribute("email");
        if(email == null){
            return "redirect:/user/login";
        }
	    return "/common/safety";
	}

}
