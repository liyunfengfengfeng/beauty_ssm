package com.yingjun.ssm.enums;


/**
 * 公司员工类型类型
 * @author liyunfeng
 */

public enum CompanyEmployeeTypeEnum {

	// 公司员工类型
	FAREN(1, "法人"),
	CAIWUFUZEREN(2, "财务负责人"),
	GUDONGCHUZIREN(3, "股东及出资人"),
	DONGSHIHUI(4, "董事会"),
	ZHIXINGSHIWUHEHUOREN(5, "执行事务合伙人"),
	WEIPAIDAIBIAOFUZEREN(6, "委派代表负责人");

	private int state;

	private String msg;

	CompanyEmployeeTypeEnum(int state, String msg) {
		this.state = state;
		this.msg = msg;
	}

	public int getState() {
		return state;
	}

	public String getMsg() {
		return msg;
	}

	public static CompanyEmployeeTypeEnum stateOf(int index) {
		for (CompanyEmployeeTypeEnum state : values()) {
			if (state.getState() == index) {
				return state;
			}
		}
		return null;
	}

}
