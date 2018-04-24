package com.yingjun.ssm.enums;


/**
 * 公司类型
 * @author liyunfeng
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
