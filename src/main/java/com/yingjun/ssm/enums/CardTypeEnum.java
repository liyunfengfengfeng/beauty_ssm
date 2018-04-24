package com.yingjun.ssm.enums;


/**
 * 证件类型
 * @author liyunfeng
 */

public enum CardTypeEnum {

	// 公司类型
	LIMIT_COMPANY(1, "身份证"),
	INDIVIDUAL_COMPANY(2, "营业执照");

	private int state;

	private String msg;

	CardTypeEnum(int state, String msg) {
		this.state = state;
		this.msg = msg;
	}

	public int getState() {
		return state;
	}

	public String getMsg() {
		return msg;
	}

	public static CardTypeEnum stateOf(int index) {
		for (CardTypeEnum state : values()) {
			if (state.getState() == index) {
				return state;
			}
		}
		return null;
	}

}
