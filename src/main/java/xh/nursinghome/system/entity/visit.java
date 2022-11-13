package xh.nursinghome.system.entity;

import java.sql.Date;

public class visit {
    private Integer vId;
    private String vName;
    private String vSex;
    private String vPhone;
    private String oldname;
    private Integer oldid;
    private Date vTime;
    private String vRelation;
    private String vDinner;
    private String vBestow;
    private String vHeath;
    private Double vDuration;
    private String vCometime;
    private Integer vNumber;

    public visit() {}

    public Integer getvId() {
        return vId;
    }

    public void setvId(Integer vId) {
        this.vId = vId;
    }

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName;
    }

    public String getvSex() {
        return vSex;
    }

    public void setvSex(String vSex) {
        this.vSex = vSex;
    }

    public String getvPhone() {
        return vPhone;
    }

    public void setvPhone(String vPhone) {
        this.vPhone = vPhone;
    }

    public String getOldname() {
        return oldname;
    }

    public void setOldname(String oldname) {
        this.oldname = oldname;
    }

    public Integer getOldid() {
        return oldid;
    }

    public void setOldid(Integer oldid) {
        this.oldid = oldid;
    }

    public Date getvTime() {
        return vTime;
    }

    public void setvTime(Date vTime) {
        this.vTime = vTime;
    }

    public String getvRelation() {
        return vRelation;
    }

    public void setvRelation(String vRelation) {
        this.vRelation = vRelation;
    }

    public String getvDinner() {
        return vDinner;
    }

    public void setvDinner(String vDinner) {
        this.vDinner = vDinner;
    }

    public String getvBestow() {
        return vBestow;
    }

    public void setvBestow(String vBestow) {
        this.vBestow = vBestow;
    }

    public String getvHeath() {
        return vHeath;
    }

    public void setvHeath(String vHeath) {
        this.vHeath = vHeath;
    }

    public Double getvDuration() {
        return vDuration;
    }

    public void setvDuration(Double vDuration) {
        this.vDuration = vDuration;
    }

    public String getvCometime() {
        return vCometime;
    }

    public void setvCometime(String vCometime) {
        this.vCometime = vCometime;
    }

    public Integer getvNumber() {
        return vNumber;
    }

    public void setvNumber(Integer vNumber) {
        this.vNumber = vNumber;
    }
}
