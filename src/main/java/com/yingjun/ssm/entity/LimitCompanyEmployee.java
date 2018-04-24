package com.yingjun.ssm.entity;
public class LimitCompanyEmployee {
    private Long id;//主键id
    private Object identityCardImgPdf;//身份证图片pdf存储
    private String address;//联系地址
    private java.util.Date createTime;//创建时间
    private String identityId;//认证号码
    private Integer secretaryCompanyCount;//秘书公司数量
    private java.util.Date identityTime;//实名认证时间
    private String password;//密码
    private java.util.Date updateTime;//最后一次修改时间
    private Integer identityCheck;//实名认证
    private Object idCardOppositeImg;//身份证反面照片
    private String userId;//用户唯一id
    private Object idCardPositiveImg;//身份证正面照片
    private Integer receiveCaCertificate;//是否领取了CA证书
    private String name;//姓名
    private String phoneNumber;//手机号码
    private Integer identityType;//证件类型
    private Integer registerCompanyCount;//注册公司数量
    private String email;
    private Long personId;//实名认证人id
    private Integer status;//状态
    public LimitCompanyEmployee() {
        super();
    }
    public LimitCompanyEmployee(Long id, Object identityCardImgPdf, String address, java.util.Date createTime, String identityId, Integer secretaryCompanyCount, java.util.Date identityTime, String password, java.util.Date updateTime, Integer identityCheck, Object idCardOppositeImg, String userId, Object idCardPositiveImg, Integer receiveCaCertificate, String name, String phoneNumber, Integer identityType, Integer registerCompanyCount, String email, Long personId, Integer status) {
        super();
        this.id = id;
        this.identityCardImgPdf = identityCardImgPdf;
        this.address = address;
        this.createTime = createTime;
        this.identityId = identityId;
        this.secretaryCompanyCount = secretaryCompanyCount;
        this.identityTime = identityTime;
        this.password = password;
        this.updateTime = updateTime;
        this.identityCheck = identityCheck;
        this.idCardOppositeImg = idCardOppositeImg;
        this.userId = userId;
        this.idCardPositiveImg = idCardPositiveImg;
        this.receiveCaCertificate = receiveCaCertificate;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.identityType = identityType;
        this.registerCompanyCount = registerCompanyCount;
        this.email = email;
        this.personId = personId;
        this.status = status;
    }
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Object getIdentityCardImgPdf() {
        return this.identityCardImgPdf;
    }

    public void setIdentityCardImgPdf(Object identityCardImgPdf) {
        this.identityCardImgPdf = identityCardImgPdf;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public java.util.Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(java.util.Date createTime) {
        this.createTime = createTime;
    }

    public String getIdentityId() {
        return this.identityId;
    }

    public void setIdentityId(String identityId) {
        this.identityId = identityId;
    }

    public Integer getSecretaryCompanyCount() {
        return this.secretaryCompanyCount;
    }

    public void setSecretaryCompanyCount(Integer secretaryCompanyCount) {
        this.secretaryCompanyCount = secretaryCompanyCount;
    }

    public java.util.Date getIdentityTime() {
        return this.identityTime;
    }

    public void setIdentityTime(java.util.Date identityTime) {
        this.identityTime = identityTime;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public java.util.Date getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(java.util.Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getIdentityCheck() {
        return this.identityCheck;
    }

    public void setIdentityCheck(Integer identityCheck) {
        this.identityCheck = identityCheck;
    }

    public Object getIdCardOppositeImg() {
        return this.idCardOppositeImg;
    }

    public void setIdCardOppositeImg(Object idCardOppositeImg) {
        this.idCardOppositeImg = idCardOppositeImg;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Object getIdCardPositiveImg() {
        return this.idCardPositiveImg;
    }

    public void setIdCardPositiveImg(Object idCardPositiveImg) {
        this.idCardPositiveImg = idCardPositiveImg;
    }

    public Integer getReceiveCaCertificate() {
        return this.receiveCaCertificate;
    }

    public void setReceiveCaCertificate(Integer receiveCaCertificate) {
        this.receiveCaCertificate = receiveCaCertificate;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getIdentityType() {
        return this.identityType;
    }

    public void setIdentityType(Integer identityType) {
        this.identityType = identityType;
    }

    public Integer getRegisterCompanyCount() {
        return this.registerCompanyCount;
    }

    public void setRegisterCompanyCount(Integer registerCompanyCount) {
        this.registerCompanyCount = registerCompanyCount;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getPersonId() {
        return this.personId;
    }

    public void setPersonId(Long personId) {
        this.personId = personId;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
