package com.yingjun.ssm.enums;

/**
 * 业务异常基类，所有业务异常都必须继承于此异常 定义异常时，需要先确定异常所属模块。 例如：无效用户可以定义为 [10010001]
 * 前四位数为系统模块编号，后4位为错误代码 ,唯一。
 * 
 * @author yingjun
 *
 */
public enum CompanyTypeEnum {

	// 公司类型
	LIMIT_COMPANY(1, "有限公司"),
	PARTNERSHIP_COMPANY(2, "合伙企业"),
	INDIVIDUAL_COMPANY(3, "个人独资");

	private int state;

	private String msg;

	CompanyTypeEnum(int state, String msg) {
		this.state = state;
		this.msg = msg;
	}

	public int getState() {
		return state;
	}

	public String getMsg() {
		return msg;
	}

	public static CompanyTypeEnum stateOf(int index) {
		for (CompanyTypeEnum state : values()) {
			if (state.getState() == index) {
				return state;
			}
		}
		return null;
	}

}
