package com.yingjun.ssm.enums;


/**
 * 公司状态
 * @author liyunfeng
 */

public enum CompanyStatusEnum {

	// 公司
	COMPANY_PASS(1, "公司审核通过"),
	COMPANY_REJECT(2, "公司审核驳回");

	private int state;

	private String msg;

	CompanyStatusEnum(int state, String msg) {
		this.state = state;
		this.msg = msg;
	}

	public int getState() {
		return state;
	}

	public String getMsg() {
		return msg;
	}

	public static CompanyStatusEnum stateOf(int index) {
		for (CompanyStatusEnum state : values()) {
			if (state.getState() == index) {
				return state;
			}
		}
		return null;
	}

}
