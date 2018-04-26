package com.yingjun.ssm.entity;
/**
 * 合伙企业公司人员信息
 * @author liyunfeng
 */
public class PartnerCompanyEmployee {
    //执行事务合伙人信息
    /**
     * 姓名
     */
    private String transactionName;
    /**
     * 身份证号
     */
    private String transactionIdNum;
    /**
     * 移动电话
     */
    private String transactionMobile;
    /**
     * 身份证住址
     */
    private String transactionIdAddress;
    /**
     * 电子邮箱
     */
    private String transactionMail;
    //委派代表人信息
    /**
     * 姓名
     */
    private String representName;
    /**
     * 身份证号
     */
    private String representIdNum;
    /**
     * 电话
     */
    private String representMobilePhone;
    /**
     * 身份证住址
     */
    private String representIdAddress;
    /**
     * 电子邮箱
     */
    private String representEmail;
    //财务负责人信息
    /**
     * 姓名
     */
    private String financeName;
    /**
     * 身份证号
     */
    private String financeIdNum;
    /**
     * 电话
     */
    private String financeMobilePhone;
    /**
     * 身份证住址
     */
    private String financeIdAddress;
    /**
     * 电子邮箱
     */
    private String financeEmail;
    /**
     * 公司id
     */
    private String companyId;

    public PartnerCompanyEmployee() {
    }

    public PartnerCompanyEmployee(String transactionName, String transactionIdNum, String transactionMobile, String transactionIdAddress, String transactionMail, String representName, String representIdNum, String representMobilePhone, String representIdAddress, String representEmail, String financeName, String financeIdNum, String financeMobilePhone, String financeIdAddress, String financeEmail, String companyId) {
        this.transactionName = transactionName;
        this.transactionIdNum = transactionIdNum;
        this.transactionMobile = transactionMobile;
        this.transactionIdAddress = transactionIdAddress;
        this.transactionMail = transactionMail;
        this.representName = representName;
        this.representIdNum = representIdNum;
        this.representMobilePhone = representMobilePhone;
        this.representIdAddress = representIdAddress;
        this.representEmail = representEmail;
        this.financeName = financeName;
        this.financeIdNum = financeIdNum;
        this.financeMobilePhone = financeMobilePhone;
        this.financeIdAddress = financeIdAddress;
        this.financeEmail = financeEmail;
        this.companyId = companyId;
    }

    public String getTransactionName() {
        return transactionName;
    }

    public void setTransactionName(String transactionName) {
        this.transactionName = transactionName;
    }

    public String getTransactionIdNum() {
        return transactionIdNum;
    }

    public void setTransactionIdNum(String transactionIdNum) {
        this.transactionIdNum = transactionIdNum;
    }

    public String getTransactionMobile() {
        return transactionMobile;
    }

    public void setTransactionMobile(String transactionMobile) {
        this.transactionMobile = transactionMobile;
    }

    public String getTransactionIdAddress() {
        return transactionIdAddress;
    }

    public void setTransactionIdAddress(String transactionIdAddress) {
        this.transactionIdAddress = transactionIdAddress;
    }

    public String getTransactionMail() {
        return transactionMail;
    }

    public void setTransactionMail(String transactionMail) {
        this.transactionMail = transactionMail;
    }

    public String getRepresentName() {
        return representName;
    }

    public void setRepresentName(String representName) {
        this.representName = representName;
    }

    public String getRepresentIdNum() {
        return representIdNum;
    }

    public void setRepresentIdNum(String representIdNum) {
        this.representIdNum = representIdNum;
    }

    public String getRepresentMobilePhone() {
        return representMobilePhone;
    }

    public void setRepresentMobilePhone(String representMobilePhone) {
        this.representMobilePhone = representMobilePhone;
    }

    public String getRepresentIdAddress() {
        return representIdAddress;
    }

    public void setRepresentIdAddress(String representIdAddress) {
        this.representIdAddress = representIdAddress;
    }

    public String getRepresentEmail() {
        return representEmail;
    }

    public void setRepresentEmail(String representEmail) {
        this.representEmail = representEmail;
    }

    public String getFinanceName() {
        return financeName;
    }

    public void setFinanceName(String financeName) {
        this.financeName = financeName;
    }

    public String getFinanceIdNum() {
        return financeIdNum;
    }

    public void setFinanceIdNum(String financeIdNum) {
        this.financeIdNum = financeIdNum;
    }

    public String getFinanceMobilePhone() {
        return financeMobilePhone;
    }

    public void setFinanceMobilePhone(String financeMobilePhone) {
        this.financeMobilePhone = financeMobilePhone;
    }

    public String getFinanceIdAddress() {
        return financeIdAddress;
    }

    public void setFinanceIdAddress(String financeIdAddress) {
        this.financeIdAddress = financeIdAddress;
    }

    public String getFinanceEmail() {
        return financeEmail;
    }

    public void setFinanceEmail(String financeEmail) {
        this.financeEmail = financeEmail;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }
}
