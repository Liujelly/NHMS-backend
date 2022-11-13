package xh.nursinghome.system.entity;

import java.sql.Date;

public class donate {
    private String dName;
    private String dSource;
    private String dSex;
    private Integer dAge;
    private String dPhone;
private Integer dId;

    private String dGoodsname;
    private String dGoodsclass;
    private Integer dGoodsnumber;
    private Date dTime;




public donate(){}
    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getdSource() {
        return dSource;
    }

    public void setdSource(String dSource) {
        this.dSource = dSource;
    }

    public String getdSex() {
        return dSex;
    }

    public void setdSex(String dSex) {
        this.dSex = dSex;
    }

    public Integer getdAge() {
        return dAge;
    }

    public void setdAge(Integer dAge) {
        this.dAge = dAge;
    }

    public String getdPhone() {
        return dPhone;
    }

    public void setdPhone(String dPhone) {
        this.dPhone = dPhone;
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public String getdGoodsname() {
        return dGoodsname;
    }

    public void setdGoodsname(String dGoodsname) {
        this.dGoodsname = dGoodsname;
    }

    public String getdGoodsclass() {
        return dGoodsclass;
    }

    public void setdGoodsclass(String dGoodsclass) {
        this.dGoodsclass = dGoodsclass;
    }

    public Integer getdGoodsnumber() {
        return dGoodsnumber;
    }

    public void setdGoodsnumber(Integer dGoodsnumber) {
        this.dGoodsnumber = dGoodsnumber;
    }

    public Date getdTime() {
        return dTime;
    }

    public void setdTime(Date dTime) {
        this.dTime = dTime;
    }


}
