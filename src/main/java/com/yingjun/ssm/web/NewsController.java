package com.yingjun.ssm.web;


import com.yingjun.ssm.entity.News;
import com.yingjun.ssm.entity.RegisterCompany;
import com.yingjun.ssm.service.NewsService;
import com.yingjun.ssm.service.RegisterCompanyService;
import com.yingjun.ssm.service.UserService;
import com.yingjun.ssm.util.Page;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


/**
 * 联系我们
 * @author liyunfeng
 */
@Controller
@RequestMapping("/news")
public class NewsController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private NewsService newsService;
	/**
	 * news1
	 * @return
	 */
	@RequestMapping(value = "/news1")
	public String toNews1(Model view) {
		News news = newsService.selectNewsById(1);
		view.addAttribute("news",news);
		return "/news/news1";

	}
	/**
	 * news2
	 * @return
	 */
	@RequestMapping(value = "/news2")
	public String toNews2(Model view) {
		News news = newsService.selectNewsById(2);
		view.addAttribute("news",news);
		return "/news/news2";
	}
	/**
	 * news3
	 * @return
	 */
	@RequestMapping(value = "/news3")
	public String toNews3(Model view) {
		News news = newsService.selectNewsById(3);
		view.addAttribute("news",news);
		return "/news/news3";
	}
	/**
	 * news4
	 * @return
	 */
	@RequestMapping(value = "/news4")
	public String toNews4(Model view) {
		News news = newsService.selectNewsById(4);
		view.addAttribute("news",news);
		return "/news/news4";
	}
	/**
	 * news5
	 * @return
	 */
	@RequestMapping(value = "/news5")
	public String toNews5(Model view) {
		News news = newsService.selectNewsById(5);
		view.addAttribute("news",news);
		return "/news/news5";
	}
	/**
	 * news6
	 * @return
	 */
	@RequestMapping(value = "/news6")
	public String toNews6(Model view) {
		News news = newsService.selectNewsById(6);
		view.addAttribute("news",news);
		return "/news/news6";
	}
	/**
	 * news7
	 * @return
	 */
	@RequestMapping(value = "/news7")
	public String toNews7(Model view) {
		News news = newsService.selectNewsById(7);
		view.addAttribute("news",news);
		return "/news/news7";
	}

	/**
	 * 根据条件查询首页需要展示的新闻信息
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(Model view) {
		try {
			List<News> newsList= newsService.selectNews();
			view.addAttribute("newsList",newsList);
		} catch (Exception e) {
			throw new RuntimeException("NewsController.list.Exception",e);
		}
		return "/adminNews/newList";
	}

	/**
	 * 管理员查看新闻详情信息
	 * @return
	 */
	@RequestMapping(value = "/seeNews")
	public String seeNews(@RequestParam Integer newsId,Model view) {
		News news = newsService.selectNewsById(newsId);
		view.addAttribute("news",news);
		return "/adminNews/newsDetail";
	}

	/**
	 * 管理员查看新闻详情信息
	 * @return
	 */
	@RequestMapping(value = "/editNews")
	public String editNews(@RequestParam Integer newsId,Model view) {
		News news = newsService.selectNewsById(newsId);
		view.addAttribute("news",news);
		return "/adminNews/newsEdit";
	}

	/**
	 * 管理员更新新闻页面展示的文章信息
	 * @return
	 */
	@RequestMapping(value = "/updateNews")
	public String updateNews(@RequestParam String content,
							 @RequestParam Integer newsId,
							 Model view) {
		LOG.info(content);
		newsService.updateNews(newsId,content);
		News news = newsService.selectNewsById(newsId);
		view.addAttribute("news",news);
		return "/adminNews/newsEdit";
	}
}
