package com.yingjun.ssm.entity;
/**
 * 个人独资公司人员信息
 * @author liyunfeng
 */
public class IndividualCompanyEmployee {
    //法人信息
    /**
     * 法人名称
     */
    private String legalName;
    /**
     * 法人身份证号
     */
    private String legalIdNum;
    /**
     * 法人移动电话
     */
    private String legalMobile;
    /**
     * 法人身份证地址
     */
    private String legalIdAddress;
    /**
     * 法人邮箱
     */
    private String legalMail;
    /**
     * 公司id
     */
    private String companyId;

    public String getLegalName() {
        return legalName;
    }

    public void setLegalName(String legalName) {
        this.legalName = legalName;
    }

    public String getLegalIdNum() {
        return legalIdNum;
    }

    public void setLegalIdNum(String legalIdNum) {
        this.legalIdNum = legalIdNum;
    }

    public String getLegalMobile() {
        return legalMobile;
    }

    public void setLegalMobile(String legalMobile) {
        this.legalMobile = legalMobile;
    }

    public String getLegalIdAddress() {
        return legalIdAddress;
    }

    public void setLegalIdAddress(String legalIdAddress) {
        this.legalIdAddress = legalIdAddress;
    }

    public String getLegalMail() {
        return legalMail;
    }

    public void setLegalMail(String legalMail) {
        this.legalMail = legalMail;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    @Override
    public String toString() {
        return "IndividualCompanyEmployee{" +
                "legalName='" + legalName + '\'' +
                ", legalIdNum='" + legalIdNum + '\'' +
                ", legalMobile='" + legalMobile + '\'' +
                ", legalIdAddress='" + legalIdAddress + '\'' +
                ", legalMail='" + legalMail + '\'' +
                ", companyId='" + companyId + '\'' +
                '}';
    }
}
