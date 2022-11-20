package xh.nursinghome.system.entity;

import java.util.Date;

public class Employeetest {
    private static final long serialVersionUID = 1L;



    private Integer id;

    private String employeeId;

    private String employeeName;

    private String sex;

    private String birth;

    private String idNo;

    private String maritalStatus;

    private String nation;

    private String politicCountenance;

    private String email;

    private String phone;

    private String address;

    private Integer deptId;


    private String deptName;


    private String positionName;


    private Integer academicTitle;


    private String educationalBackground;


    private String school;


    private Date entryTime;


    private String status;


    private String contractTerm;



    private Date createTime;


    private Date updateTime;


    private String deleted;


    private Integer createBy;


    private Integer updateBy;


    private String photoUrl;

    public Employeetest() {

    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getPoliticCountenance() {
        return politicCountenance;
    }

    public void setPoliticCountenance(String politicCountenance) {
        this.politicCountenance = politicCountenance;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public Integer getAcademicTitle() {
        return academicTitle;
    }

    public void setAcademicTitle(Integer academicTitle) {
        this.academicTitle = academicTitle;
    }

    public String getEducationalBackground() {
        return educationalBackground;
    }

    public void setEducationalBackground(String educationalBackground) {
        this.educationalBackground = educationalBackground;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public Date getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(Date entryTime) {
        this.entryTime = entryTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getContractTerm() {
        return contractTerm;
    }

    public void setContractTerm(String contractTerm) {
        this.contractTerm = contractTerm;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getDeleted() {
        return deleted;
    }

    public void setDeleted(String deleted) {
        this.deleted = deleted;
    }

    public Integer getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Integer createBy) {
        this.createBy = createBy;
    }

    public Integer getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(Integer updateBy) {
        this.updateBy = updateBy;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

    @Override
    public String toString() {
        return "Employeetest{" +
                "id=" + id +
                ", employeeId='" + employeeId + '\'' +
                ", employeeName='" + employeeName + '\'' +
                ", sex='" + sex + '\'' +
                ", birth='" + birth + '\'' +
                ", idNo='" + idNo + '\'' +
                ", maritalStatus='" + maritalStatus + '\'' +
                ", nation='" + nation + '\'' +
                ", politicCountenance='" + politicCountenance + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", deptId=" + deptId +
                ", deptName='" + deptName + '\'' +
                ", positionName='" + positionName + '\'' +
                ", academicTitle=" + academicTitle +
                ", educationalBackground='" + educationalBackground + '\'' +
                ", school='" + school + '\'' +
                ", entryTime=" + entryTime +
                ", status='" + status + '\'' +
                ", contractTerm='" + contractTerm + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", deleted='" + deleted + '\'' +
                ", createBy=" + createBy +
                ", updateBy=" + updateBy +
                ", photoUrl='" + photoUrl + '\'' +
                '}';
    }
}
