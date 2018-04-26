package com.yingjun.ssm.entity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 合伙企业公司信息
 * @author liyunfeng
 */
public class PartnerCompany {
    /**
     * 公司id
     */
    private Long id;
    /**
     * 注册区域
     */
    private String registerArea;
    /**
     * 公司名称
     */
    private String companyName;
    /**
     * 注册资本
     */
    private BigDecimal registerAmount;
    /**
     * 合伙期限
     */
    private Integer limitTime;
    /**
     * 合伙人数
     */
    private Integer personNum;
    /**
     * 有效合伙人数
     */
    private Integer validityNum;
    /**
     * 计划从事业务
     */
    private String companyBusiness;
    /**
     * 经营范围
     */
    private String businessScope;

    /**
     * userId 表明公司是有哪些人创建注册的
     * @return
     */
    private String userId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRegisterArea() {
        return registerArea;
    }

    public void setRegisterArea(String registerArea) {
        this.registerArea = registerArea;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public BigDecimal getRegisterAmount() {
        return registerAmount;
    }

    public void setRegisterAmount(BigDecimal registerAmount) {
        this.registerAmount = registerAmount;
    }

    public Integer getLimitTime() {
        return limitTime;
    }

    public void setLimitTime(Integer limitTime) {
        this.limitTime = limitTime;
    }

    public Integer getPersonNum() {
        return personNum;
    }

    public void setPersonNum(Integer personNum) {
        this.personNum = personNum;
    }

    public Integer getValidityNum() {
        return validityNum;
    }

    public void setValidityNum(Integer validityNum) {
        this.validityNum = validityNum;
    }

    public String getCompanyBusiness() {
        return companyBusiness;
    }

    public void setCompanyBusiness(String companyBusiness) {
        this.companyBusiness = companyBusiness;
    }

    public String getBusinessScope() {
        return businessScope;
    }

    public void setBusinessScope(String businessScope) {
        this.businessScope = businessScope;
    }


    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "PartnerCompany{" +
                "id=" + id +
                ", registerArea='" + registerArea + '\'' +
                ", companyName='" + companyName + '\'' +
                ", registerAmount=" + registerAmount +
                ", limitTime=" + limitTime +
                ", personNum=" + personNum +
                ", validityNum=" + validityNum +
                ", companyBusiness='" + companyBusiness + '\'' +
                ", businessScope='" + businessScope + '\'' +
                '}';
    }
}
