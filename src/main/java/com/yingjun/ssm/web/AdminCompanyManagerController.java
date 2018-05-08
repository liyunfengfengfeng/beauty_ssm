package com.yingjun.ssm.web;


import com.yingjun.ssm.dto.BaseResult;
import com.yingjun.ssm.entity.LimitCompanyEmployee;
import com.yingjun.ssm.entity.RegisterCompany;
import com.yingjun.ssm.entity.TOpreatorUser;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.enums.ResultEnum;
import com.yingjun.ssm.exception.BizException;
import com.yingjun.ssm.service.RegisterCompanyService;
import com.yingjun.ssm.service.TOpreatorUserService;
import com.yingjun.ssm.service.UserService;
import com.yingjun.ssm.util.Page;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * 后台公司管理
 * @author liyunfeng
 */
@Controller
@RequestMapping("/adminCompanyManager")
public class AdminCompanyManagerController {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private RegisterCompanyService registerCompanyService;
	/**
	 * 到达公司管理页面
	 * @return
	 */
	@RequestMapping(value = "/toCompanyManager")
	public String login() {
		return "/admin/companyList";
	}

	/**
	 * 根据条件查询公司信息
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(@RequestParam(required = false) String companyName,
					   @RequestParam(required = false) Integer companyType,
					   @RequestParam(value="pno", defaultValue="1") int pno,
					   Model view) {
		try {
			LOG.info("接受到的数据是    ：" + companyName + "公司名称  " + companyType);
			List<RegisterCompany> pageList = registerCompanyService.searchCompanysListByCondition(companyName,companyType);
			//分页需要的起始与终止位置
			int pageSize = 9;
			int start = (pno-1)* pageSize;
			int end = pageSize;
			List<RegisterCompany> companyList = registerCompanyService.searchCompanysListByConditionLimit(companyName,companyType,start,end);
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
			view.addAttribute("companyList",companyList);
			view.addAttribute("page",page);
		} catch (Exception e) {
			throw new RuntimeException("依据条件查询公司信息出现的异常");
		}
		return "/admin/companyList";
	}
	/**
	 * 查询公司的详情信息
	 */
	@RequestMapping(value = "/seeCompany")
	public String seeCompany(@RequestParam String companyId,
					   Model view) {
		try {
			LOG.info("接受到的数据是    ：" + companyId);
//			根据公司id查询公司信息
			RegisterCompany registerCompany = registerCompanyService.queryCompanyInfoById(companyId);
			switch (registerCompany.getCompanyType()){
				//有限
				case 1:

					//根据公司id查询出员工信息
					List<LimitCompanyEmployee> limitCompanyEmployees = registerCompanyService.queryCompanyEmployeesInfoByCompanyId(companyId);
					view.addAttribute("registerCompany",registerCompany);
					view.addAttribute("limitCompanyEmployees",limitCompanyEmployees);
					return "/adminCompany/limitCompanyDetail";
				case 2:
					//个人独资

					//根据公司id查询出员工信息
					List<LimitCompanyEmployee> individualCompanyEmployees = registerCompanyService.queryCompanyEmployeesInfoByCompanyId(companyId);
					view.addAttribute("registerCompany",registerCompany);
					view.addAttribute("limitCompanyEmployees",individualCompanyEmployees);
					return "/adminCompany/individualDetail";
				case 3:
					//合伙企业

					//根据公司id查询出员工信息
					List<LimitCompanyEmployee> partnerCompanyEmployees = registerCompanyService.queryCompanyEmployeesInfoByCompanyId(companyId);
					view.addAttribute("registerCompany",registerCompany);
					view.addAttribute("limitCompanyEmployees",partnerCompanyEmployees);
					return "/adminCompany/partnerCompanyDetail";
				default:
					LOG.info("查询公司信息，公司类型不存在");
					break;
			}
		} catch (Exception e) {
			throw new RuntimeException("AdminCompanyManagerController.seeCompany.Exception",e);
		}
		return "/adminCompany/individualDetail";
	}

	/**
	 * 审核公司的信息
	 */
	@RequestMapping(value = "/auditCompany")
	public String auditCompany(@RequestParam String companyId,
							   Model view) {
		try {
			LOG.info("接受到的数据是    ：" + companyId);
//			根据公司id查询公司信息
			RegisterCompany registerCompany = registerCompanyService.queryCompanyInfoById(companyId);
			switch (registerCompany.getCompanyType()){
				//有限
				case 1:

					//根据公司id查询出员工信息
					List<LimitCompanyEmployee> limitCompanyEmployees = registerCompanyService.queryCompanyEmployeesInfoByCompanyId(companyId);
					view.addAttribute("registerCompany",registerCompany);
					view.addAttribute("limitCompanyEmployees",limitCompanyEmployees);
					return "/adminCompany/limitCompanyAudit";
				case 2:
					//个人独资

					//根据公司id查询出员工信息
					List<LimitCompanyEmployee> individualCompanyEmployees = registerCompanyService.queryCompanyEmployeesInfoByCompanyId(companyId);
					view.addAttribute("registerCompany",registerCompany);
					view.addAttribute("limitCompanyEmployees",individualCompanyEmployees);
					return "/adminCompany/individualAudit";
				case 3:
					//合伙企业

					//根据公司id查询出员工信息
					List<LimitCompanyEmployee> partnerCompanyEmployees = registerCompanyService.queryCompanyEmployeesInfoByCompanyId(companyId);
					view.addAttribute("registerCompany",registerCompany);
					view.addAttribute("limitCompanyEmployees",partnerCompanyEmployees);
					return "/adminCompany/partnerCompanyAudit";
				default:
					LOG.info("查询公司信息，公司类型不存在");
					break;
			}
		} catch (Exception e) {
			throw new RuntimeException("AdminCompanyManagerController.seeCompany.Exception",e);
		}
		return "/adminCompany/individualDetail";
	}


	/**
	 * 审核公司通过
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/companyPass",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> companyPass(String companyName,
										HttpSession session) {
		try {
			registerCompanyService.companyPass(companyName);

		} catch (BizException e) {
			return new BaseResult<>(false, e.getMessage());
		} catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.OPERATION_FAIL.getMsg());
		}
		return new BaseResult<>(true, "登陆成功");
	}


	/**
	 * 审核公司驳回
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/companyReject",produces = {"application/json;charset=UTF-8"})
	public BaseResult<Object> companyReject(String companyName,
										  HttpSession session) {
		try {
			registerCompanyService.companyReject(companyName);

		} catch (BizException e) {
			return new BaseResult<>(false, e.getMessage());
		} catch (Exception e) {
			return new BaseResult<>(false, ResultEnum.OPERATION_FAIL.getMsg());
		}
		return new BaseResult<>(true, "登陆成功");
	}



}