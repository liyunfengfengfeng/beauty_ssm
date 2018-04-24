package com.yingjun.ssm.entity;
/**
 * 有限公司人员信息
 * @author liyunfeng
 */
public class LimitCompanyEmployee {
    //法人信息
    /**
     * 法人名称
     */
    private String legalPersonName;
    /**
     * 法人身份证号
     */
    private String legalPersonCard;
    /**
     * 法人移动电话
     */
    private String legalPersonMobile;
    /**
     * 法人身份证地址
     */
    private String legalPersonAddress;
    /**
     * 法人邮箱
     */
    private String legalPersonMail;
    //财务负责人信息
    /**
     * 财务负责人姓名
     */
    private String financePersonName;
    /**
     * 财务负责人身份证号
     */
    private String financePersonIdNum;
    /**
     * 财务负责人移动电话
     */
    private String financePersonMobilePhone;
    /**
     * 财务负责人电子邮箱
     */
    private String financePersonEmail;
    //股东信息
    /**
     * 股东姓名
     */
    private String gdName;
    /**
     * 股东身份证类型
     */
    private Integer gdCardType;
    /**
     * 股东身份证号码
     */
    private String gdCardNum;
    /**
     * 实缴金额
     */
    private String gdRealPay;
    /**
     * 认缴金额
     */
    private String gdConfirmPay;
    /**
     * 出资方式
     */
    private String gdPayWay;

    //是否设立董事会 经理信息
    /**
     * 经理姓名
     */
    private String managerName;
    /**
     * 经理证件号码
     */
    private Integer managerCardType;
    /**
     * 经理证件号码
     */
    private String managerIdNum;
    //是否设立董事会 董事信息
    /**
     * 董事姓名
     */
    private String dsName;
    /**
     * 董事证件类型
     */
    private Integer dsCardType;
    /**
     * 董事证件号码
     */
    private String dsIdNum;
    //是否设立董事会 监事信息
    /**
     * 监事姓名
     */
    private String jsName;
    /**
     * 监事的证件类型
     */
    private Integer jsCardType;
    /**
     * 监事身份证号码
     */
    private String jsIdNum;

    public String getLegalPersonName() {
        return legalPersonName;
    }

    public void setLegalPersonName(String legalPersonName) {
        this.legalPersonName = legalPersonName;
    }

    public String getLegalPersonCard() {
        return legalPersonCard;
    }

    public void setLegalPersonCard(String legalPersonCard) {
        this.legalPersonCard = legalPersonCard;
    }

    public String getLegalPersonMobile() {
        return legalPersonMobile;
    }

    public void setLegalPersonMobile(String legalPersonMobile) {
        this.legalPersonMobile = legalPersonMobile;
    }

    public String getLegalPersonAddress() {
        return legalPersonAddress;
    }

    public void setLegalPersonAddress(String legalPersonAddress) {
        this.legalPersonAddress = legalPersonAddress;
    }

    public String getLegalPersonMail() {
        return legalPersonMail;
    }

    public void setLegalPersonMail(String legalPersonMail) {
        this.legalPersonMail = legalPersonMail;
    }

    public String getFinancePersonName() {
        return financePersonName;
    }

    public void setFinancePersonName(String financePersonName) {
        this.financePersonName = financePersonName;
    }

    public String getFinancePersonIdNum() {
        return financePersonIdNum;
    }

    public void setFinancePersonIdNum(String financePersonIdNum) {
        this.financePersonIdNum = financePersonIdNum;
    }

    public String getFinancePersonMobilePhone() {
        return financePersonMobilePhone;
    }

    public void setFinancePersonMobilePhone(String financePersonMobilePhone) {
        this.financePersonMobilePhone = financePersonMobilePhone;
    }

    public String getFinancePersonEmail() {
        return financePersonEmail;
    }

    public void setFinancePersonEmail(String financePersonEmail) {
        this.financePersonEmail = financePersonEmail;
    }

    public String getGdName() {
        return gdName;
    }

    public void setGdName(String gdName) {
        this.gdName = gdName;
    }

    public Integer getGdCardType() {
        return gdCardType;
    }

    public void setGdCardType(Integer gdCardType) {
        this.gdCardType = gdCardType;
    }

    public String getGdCardNum() {
        return gdCardNum;
    }

    public void setGdCardNum(String gdCardNum) {
        this.gdCardNum = gdCardNum;
    }

    public String getGdRealPay() {
        return gdRealPay;
    }

    public void setGdRealPay(String gdRealPay) {
        this.gdRealPay = gdRealPay;
    }

    public String getGdConfirmPay() {
        return gdConfirmPay;
    }

    public void setGdConfirmPay(String gdConfirmPay) {
        this.gdConfirmPay = gdConfirmPay;
    }

    public String getGdPayWay() {
        return gdPayWay;
    }

    public void setGdPayWay(String gdPayWay) {
        this.gdPayWay = gdPayWay;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public Integer getManagerCardType() {
        return managerCardType;
    }

    public void setManagerCardType(Integer managerCardType) {
        this.managerCardType = managerCardType;
    }

    public String getManagerIdNum() {
        return managerIdNum;
    }

    public void setManagerIdNum(String managerIdNum) {
        this.managerIdNum = managerIdNum;
    }

    public String getDsName() {
        return dsName;
    }

    public void setDsName(String dsName) {
        this.dsName = dsName;
    }

    public Integer getDsCardType() {
        return dsCardType;
    }

    public void setDsCardType(Integer dsCardType) {
        this.dsCardType = dsCardType;
    }

    public String getDsIdNum() {
        return dsIdNum;
    }

    public void setDsIdNum(String dsIdNum) {
        this.dsIdNum = dsIdNum;
    }

    public String getJsName() {
        return jsName;
    }

    public void setJsName(String jsName) {
        this.jsName = jsName;
    }

    public Integer getJsCardType() {
        return jsCardType;
    }

    public void setJsCardType(Integer jsCardType) {
        this.jsCardType = jsCardType;
    }

    public String getJsIdNum() {
        return jsIdNum;
    }

    public void setJsIdNum(String jsIdNum) {
        this.jsIdNum = jsIdNum;
    }

    public LimitCompanyEmployee() {
    }

    public LimitCompanyEmployee(String legalPersonName, String legalPersonCard, String legalPersonMobile, String legalPersonAddress, String legalPersonMail, String financePersonName, String financePersonIdNum, String financePersonMobilePhone, String financePersonEmail, String gdName, Integer gdCardType, String gdCardNum, String gdRealPay, String gdConfirmPay, String gdPayWay, String managerName, Integer managerCardType, String managerIdNum, String dsName, Integer dsCardType, String dsIdNum, String jsName, Integer jsCardType, String jsIdNum) {
        this.legalPersonName = legalPersonName;
        this.legalPersonCard = legalPersonCard;
        this.legalPersonMobile = legalPersonMobile;
        this.legalPersonAddress = legalPersonAddress;
        this.legalPersonMail = legalPersonMail;
        this.financePersonName = financePersonName;
        this.financePersonIdNum = financePersonIdNum;
        this.financePersonMobilePhone = financePersonMobilePhone;
        this.financePersonEmail = financePersonEmail;
        this.gdName = gdName;
        this.gdCardType = gdCardType;
        this.gdCardNum = gdCardNum;
        this.gdRealPay = gdRealPay;
        this.gdConfirmPay = gdConfirmPay;
        this.gdPayWay = gdPayWay;
        this.managerName = managerName;
        this.managerCardType = managerCardType;
        this.managerIdNum = managerIdNum;
        this.dsName = dsName;
        this.dsCardType = dsCardType;
        this.dsIdNum = dsIdNum;
        this.jsName = jsName;
        this.jsCardType = jsCardType;
        this.jsIdNum = jsIdNum;
    }

    @Override
    public String toString() {
        return "LimitCompanyEmployee{" +
                "legalPersonName='" + legalPersonName + '\'' +
                ", legalPersonCard='" + legalPersonCard + '\'' +
                ", legalPersonMobile='" + legalPersonMobile + '\'' +
                ", legalPersonAddress='" + legalPersonAddress + '\'' +
                ", legalPersonMail='" + legalPersonMail + '\'' +
                ", financePersonName='" + financePersonName + '\'' +
                ", financePersonIdNum='" + financePersonIdNum + '\'' +
                ", financePersonMobilePhone='" + financePersonMobilePhone + '\'' +
                ", financePersonEmail='" + financePersonEmail + '\'' +
                ", gdName='" + gdName + '\'' +
                ", gdCardType=" + gdCardType +
                ", gdCardNum='" + gdCardNum + '\'' +
                ", gdRealPay='" + gdRealPay + '\'' +
                ", gdConfirmPay='" + gdConfirmPay + '\'' +
                ", gdPayWay='" + gdPayWay + '\'' +
                ", managerName='" + managerName + '\'' +
                ", managerCardType=" + managerCardType +
                ", managerIdNum='" + managerIdNum + '\'' +
                ", dsName='" + dsName + '\'' +
                ", dsCardType=" + dsCardType +
                ", dsIdNum='" + dsIdNum + '\'' +
                ", jsName='" + jsName + '\'' +
                ", jsCardType=" + jsCardType +
                ", jsIdNum='" + jsIdNum + '\'' +
                '}';
    }
}
