package com.yingjun.ssm.entity;
public class RegisterCompany {
    private Long id;
    private Integer companyType;//公司注册类型
    private Integer hasDirectorate;//是否有董事会（0:没有；1：有）
    private String secretaryApproveUserId;//秘书公司审核
    private Integer approveStatus;//审核状态（1：待审核；2：审核通过；3：驳回）
    private Double registerAmount;//注册金额
    private String remark;//备注
    private Integer employedPeople;//从业总人数（个体工商户）
    private Integer businessYear;//营业年限（有限公司）
    private Long companyAddressId;
    private Integer partnerCount;//合伙人数
    private Integer payStatus;//支付状态
    private java.util.Date updateTime;
    private Integer vendorServiceAreaId;//注册区域
    private Integer companyBusinessId;//计划从事业务
    private String operatorApproveUserName;//审批人姓名
    private String companyId;//公司Id
    private Integer partnerYears;//合伙年限
    private java.util.Date createTime;
    private java.util.Date registerFinishTime;//注册完成时间
    private java.util.Date operatorApproveTime;//审批时间
    private Integer investCondition;//投资情况（0:一人独资；1：多人投资）
    private String userId;//用户Id
    private String companyName;//公司名称
    private String vendorId;//秘书公司id
    private Integer maxPartnerCount;//有限合伙人
    private String operatorApproveUserId;//审批人Id
    private String orderId;//订单号
    private String secretaryApproveUserName;//秘书公司审核人名
    private java.util.Date secretaryApproveTime;//秘书公司审核时间
    public RegisterCompany() {
        super();
    }
    public RegisterCompany(Long id,Integer companyType,Integer hasDirectorate,String secretaryApproveUserId,Integer approveStatus,Double registerAmount,String remark,Integer employedPeople,Integer businessYear,Long companyAddressId,Integer partnerCount,Integer payStatus,java.util.Date updateTime,Integer vendorServiceAreaId,Integer companyBusinessId,String operatorApproveUserName,String companyId,Integer partnerYears,java.util.Date createTime,java.util.Date registerFinishTime,java.util.Date operatorApproveTime,Integer investCondition,String userId,String companyName,String vendorId,Integer maxPartnerCount,String operatorApproveUserId,String orderId,String secretaryApproveUserName,java.util.Date secretaryApproveTime) {
        super();
        this.id = id;
        this.companyType = companyType;
        this.hasDirectorate = hasDirectorate;
        this.secretaryApproveUserId = secretaryApproveUserId;
        this.approveStatus = approveStatus;
        this.registerAmount = registerAmount;
        this.remark = remark;
        this.employedPeople = employedPeople;
        this.businessYear = businessYear;
        this.companyAddressId = companyAddressId;
        this.partnerCount = partnerCount;
        this.payStatus = payStatus;
        this.updateTime = updateTime;
        this.vendorServiceAreaId = vendorServiceAreaId;
        this.companyBusinessId = companyBusinessId;
        this.operatorApproveUserName = operatorApproveUserName;
        this.companyId = companyId;
        this.partnerYears = partnerYears;
        this.createTime = createTime;
        this.registerFinishTime = registerFinishTime;
        this.operatorApproveTime = operatorApproveTime;
        this.investCondition = investCondition;
        this.userId = userId;
        this.companyName = companyName;
        this.vendorId = vendorId;
        this.maxPartnerCount = maxPartnerCount;
        this.operatorApproveUserId = operatorApproveUserId;
        this.orderId = orderId;
        this.secretaryApproveUserName = secretaryApproveUserName;
        this.secretaryApproveTime = secretaryApproveTime;
    }
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getCompanyType() {
        return this.companyType;
    }

    public void setCompanyType(Integer companyType) {
        this.companyType = companyType;
    }

    public Integer getHasDirectorate() {
        return this.hasDirectorate;
    }

    public void setHasDirectorate(Integer hasDirectorate) {
        this.hasDirectorate = hasDirectorate;
    }

    public String getSecretaryApproveUserId() {
        return this.secretaryApproveUserId;
    }

    public void setSecretaryApproveUserId(String secretaryApproveUserId) {
        this.secretaryApproveUserId = secretaryApproveUserId;
    }

    public Integer getApproveStatus() {
        return this.approveStatus;
    }

    public void setApproveStatus(Integer approveStatus) {
        this.approveStatus = approveStatus;
    }

    public Double getRegisterAmount() {
        return this.registerAmount;
    }

    public void setRegisterAmount(Double registerAmount) {
        this.registerAmount = registerAmount;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getEmployedPeople() {
        return this.employedPeople;
    }

    public void setEmployedPeople(Integer employedPeople) {
        this.employedPeople = employedPeople;
    }

    public Integer getBusinessYear() {
        return this.businessYear;
    }

    public void setBusinessYear(Integer businessYear) {
        this.businessYear = businessYear;
    }

    public Long getCompanyAddressId() {
        return this.companyAddressId;
    }

    public void setCompanyAddressId(Long companyAddressId) {
        this.companyAddressId = companyAddressId;
    }

    public Integer getPartnerCount() {
        return this.partnerCount;
    }

    public void setPartnerCount(Integer partnerCount) {
        this.partnerCount = partnerCount;
    }

    public Integer getPayStatus() {
        return this.payStatus;
    }

    public void setPayStatus(Integer payStatus) {
        this.payStatus = payStatus;
    }

    public java.util.Date getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(java.util.Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getVendorServiceAreaId() {
        return this.vendorServiceAreaId;
    }

    public void setVendorServiceAreaId(Integer vendorServiceAreaId) {
        this.vendorServiceAreaId = vendorServiceAreaId;
    }

    public Integer getCompanyBusinessId() {
        return this.companyBusinessId;
    }

    public void setCompanyBusinessId(Integer companyBusinessId) {
        this.companyBusinessId = companyBusinessId;
    }

    public String getOperatorApproveUserName() {
        return this.operatorApproveUserName;
    }

    public void setOperatorApproveUserName(String operatorApproveUserName) {
        this.operatorApproveUserName = operatorApproveUserName;
    }

    public String getCompanyId() {
        return this.companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public Integer getPartnerYears() {
        return this.partnerYears;
    }

    public void setPartnerYears(Integer partnerYears) {
        this.partnerYears = partnerYears;
    }

    public java.util.Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(java.util.Date createTime) {
        this.createTime = createTime;
    }

    public java.util.Date getRegisterFinishTime() {
        return this.registerFinishTime;
    }

    public void setRegisterFinishTime(java.util.Date registerFinishTime) {
        this.registerFinishTime = registerFinishTime;
    }

    public java.util.Date getOperatorApproveTime() {
        return this.operatorApproveTime;
    }

    public void setOperatorApproveTime(java.util.Date operatorApproveTime) {
        this.operatorApproveTime = operatorApproveTime;
    }

    public Integer getInvestCondition() {
        return this.investCondition;
    }

    public void setInvestCondition(Integer investCondition) {
        this.investCondition = investCondition;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCompanyName() {
        return this.companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getVendorId() {
        return this.vendorId;
    }

    public void setVendorId(String vendorId) {
        this.vendorId = vendorId;
    }

    public Integer getMaxPartnerCount() {
        return this.maxPartnerCount;
    }

    public void setMaxPartnerCount(Integer maxPartnerCount) {
        this.maxPartnerCount = maxPartnerCount;
    }

    public String getOperatorApproveUserId() {
        return this.operatorApproveUserId;
    }

    public void setOperatorApproveUserId(String operatorApproveUserId) {
        this.operatorApproveUserId = operatorApproveUserId;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getSecretaryApproveUserName() {
        return this.secretaryApproveUserName;
    }

    public void setSecretaryApproveUserName(String secretaryApproveUserName) {
        this.secretaryApproveUserName = secretaryApproveUserName;
    }

    public java.util.Date getSecretaryApproveTime() {
        return this.secretaryApproveTime;
    }

    public void setSecretaryApproveTime(java.util.Date secretaryApproveTime) {
        this.secretaryApproveTime = secretaryApproveTime;
    }

}
