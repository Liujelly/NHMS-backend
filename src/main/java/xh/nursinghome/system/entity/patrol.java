package xh.nursinghome.system.entity;

import java.sql.Date;

public class patrol {
    private Integer pId;
    private String pName;
    private Date pTime;
    private String pPerson;
    private String pContent;
    private String pUnit;
    private String pSide;

    public patrol() {}

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public Date getpTime() {
        return pTime;
    }

    public void setpTime(Date pTime) {
        this.pTime = pTime;
    }

    public String getpPerson() {
        return pPerson;
    }

    public void setpPerson(String pPerson) {
        this.pPerson = pPerson;
    }

    public String getpContent() {
        return pContent;
    }

    public void setpContent(String pContent) {
        this.pContent = pContent;
    }

    public String getpUnit() {
        return pUnit;
    }

    public void setpUnit(String pUnit) {
        this.pUnit = pUnit;
    }

    public String getpSide() {
        return pSide;
    }

    public void setpSide(String pSide) {
        this.pSide = pSide;
    }
}
