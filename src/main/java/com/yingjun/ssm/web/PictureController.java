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

import javax.servlet.http.HttpSession;


/**
 * 图片管理
 * @author liyunfeng
 */
@Controller
@RequestMapping("/picture")
public class PictureController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
    /**
     * 到达系统logo管理界面
     * @return
     */
    @RequestMapping(value = "/toLogoManager")
    public String login() {
        return "/adminPicture/logoManager";
    }

}
