package com.yingjun.ssm.web;



import com.yingjun.ssm.entity.User;
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
 * 管理员
 * @author liyunfeng
 */
@Controller
@RequestMapping("/adminUser")
public class AdminUserController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserService userService;
	/**
	 * 到达普通用户管理页面
	 * @return
	 */
	@RequestMapping(value = "/toUserOperate")
	public String login() {
		return "/admin/searchList";
	}
	/**
	 * 用户登录
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(User user,
					   @RequestParam(value="pno", defaultValue="1") int pno,
					   Model view) {
		try {
			LOG.info("接受到的数据是    ：" + user);
			List<User> pageList = userService.searchUserListByCondition(user);
			//分页需要的起始与终止位置
			int pageSize = 9;
			int start = (pno-1)* pageSize;
			int end = pageSize;
			user.setStart(start);
			user.setEnd(end);
			List<User> userList = userService.searchUserListByConditionLimit(user);
			Page page = new Page();
			int totalRecord = pageList.size();
			//设置当前页
			page.setPageNo(pno);
			//每页容量
			page.setPageSize(pageSize);
			//总页数
			int totalPageNum = (totalRecord  +  pageSize  - 1) / pageSize;
			page.setTotalPage(totalPageNum);
			//总记录数
			page.setTotalRecord(totalRecord);
			view.addAttribute("userList",userList);
			view.addAttribute("page",page);
		} catch (Exception e) {
			throw new RuntimeException("依据条件查询普通用户出现的异常");
		}
		return "/admin/searchList";
	}
    /**
     * 到达新增普通用户页面
     * @return
     */
    @RequestMapping(value = "/toAddUser")
    public String toAddUser() {
        return "/admin/form";
    }
    /**
     * 新增普通用户
     * @return
     */
    @RequestMapping(value = "/addUser")
    public String list(User user) {
        try {
            LOG.info("接受到的数据是    ：" + user);
            userService.saveUser(user);
        } catch (Exception e) {
            throw new RuntimeException("依据条件查询普通用户出现的异常");
        }
        return "/admin/searchList";
    }
	/**
	 * 删除普通用户
	 * @return
	 */
	@RequestMapping(value = "/deleteUser")
	public String deleteUser(@RequestParam Integer userId,Model view) {
		try {
			LOG.info("接受到的用户ID是    ：" + userId);
			userService.deleteUser(userId);
		} catch (Exception e) {
			throw new RuntimeException("");
		}
		return list(new User(), 1, view);
	}
}
