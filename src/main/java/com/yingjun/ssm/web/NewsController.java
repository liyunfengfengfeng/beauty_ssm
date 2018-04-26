package com.yingjun.ssm.web;


import com.yingjun.ssm.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 联系我们
 * @author liyunfeng
 */
@Controller
@RequestMapping("/news")
public class NewsController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	/**
	 * news1
	 * @return
	 */
	@RequestMapping(value = "/news1")
	public String toNews1() {
		return "/news/news1";
	}
	/**
	 * news2
	 * @return
	 */
	@RequestMapping(value = "/news2")
	public String toNews2() {
		return "/news/news2";
	}
	/**
	 * news3
	 * @return
	 */
	@RequestMapping(value = "/news3")
	public String toNews3() {
		return "/news/news3";
	}
	/**
	 * news4
	 * @return
	 */
	@RequestMapping(value = "/news4")
	public String toNews4() {
		return "/news/news4";
	}
	/**
	 * news5
	 * @return
	 */
	@RequestMapping(value = "/news5")
	public String toNews5() {
		return "/news/news5";
	}
	/**
	 * news6
	 * @return
	 */
	@RequestMapping(value = "/news6")
	public String toNews6() {
		return "/news/news6";
	}
	/**
	 * news7
	 * @return
	 */
	@RequestMapping(value = "/news7")
	public String toNews7() {
		return "/news/news7";
	}
}
