package com.yingjun.ssm.entity;
/**
 * 后台查询公司员工的具体信息
 * @author liyunfeng
 */
public class CompanyEmployeeAudit {
    /**
     * 员工姓名
     */
    private String name;
    /**
     * 公司类型
     */
    private String companyType;
    /**
     * 身份证号码
     */
    private String identityId;
    /**
     * 地址
     */
    private String address;
    /**
     * 实缴金额
     */
    private String realPay;
    /**
     * 认缴金额
     */
    private String confirmPay;
    /**
     * 出资方式
     */
    private String payWay;
    /**
     * 手机号码
     */
    private String phoneNumber;
    /**
     * 状态
     */
    private Integer status;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    public String getIdentityId() {
        return identityId;
    }

    public void setIdentityId(String identityId) {
        this.identityId = identityId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRealPay() {
        return realPay;
    }

    public void setRealPay(String realPay) {
        this.realPay = realPay;
    }

    public String getConfirmPay() {
        return confirmPay;
    }

    public void setConfirmPay(String confirmPay) {
        this.confirmPay = confirmPay;
    }

    public String getPayWay() {
        return payWay;
    }

    public void setPayWay(String payWay) {
        this.payWay = payWay;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
