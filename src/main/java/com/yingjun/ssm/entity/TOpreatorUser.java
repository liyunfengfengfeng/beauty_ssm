package com.yingjun.ssm.entity;
/**
 * @author liyunfeng
 */
public class TOpreatorUser {
    /**
     * id
     */
    private Long id;
    /**
     * 有效性
     */
    private Integer valid;
    /**
     * 运维名称
     */
    private String operatorName;
    /**
     * 手机号
     */
    private String phoneNo;
    /**
     * 更新时间
     */
    private java.util.Date updateTime;
    /**
     * 创建时间
     */
    private java.util.Date createTime;
    /**
     * 角色（1：管理员；2：运维）
     */
    private Integer roleId;
    /**
     * 运维密码
     */
    private String operatorPassword;
    /**
     * 运维Id
     */
    private String operatorAccount;

    /**
     * 邮件
     */
    private String email;

    public TOpreatorUser() {
        super();
    }
    public TOpreatorUser(Long id,Integer valid,String operatorName,String phoneNo,java.util.Date updateTime,java.util.Date createTime,Integer roleId,String operatorPassword,String operatorAccount,String email) {
        super();
        this.id = id;
        this.valid = valid;
        this.operatorName = operatorName;
        this.phoneNo = phoneNo;
        this.updateTime = updateTime;
        this.createTime = createTime;
        this.roleId = roleId;
        this.operatorPassword = operatorPassword;
        this.operatorAccount = operatorAccount;
        this.email = email;
    }
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getValid() {
        return this.valid;
    }

    public void setValid(Integer valid) {
        this.valid = valid;
    }

    public String getOperatorName() {
        return this.operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    public String getPhoneNo() {
        return this.phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public java.util.Date getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(java.util.Date updateTime) {
        this.updateTime = updateTime;
    }

    public java.util.Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(java.util.Date createTime) {
        this.createTime = createTime;
    }

    public Integer getRoleId() {
        return this.roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getOperatorPassword() {
        return this.operatorPassword;
    }

    public void setOperatorPassword(String operatorPassword) {
        this.operatorPassword = operatorPassword;
    }

    public String getOperatorAccount() {
        return this.operatorAccount;
    }

    public void setOperatorAccount(String operatorAccount) {
        this.operatorAccount = operatorAccount;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
