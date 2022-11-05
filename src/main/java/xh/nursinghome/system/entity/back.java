package xh.nursinghome.system.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class back {
    private Integer id;
    private String name;
    private String tel;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
    private Date backtime;
    private String state;

    @Override
    public String toString() {
        return "back{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", backtime=" + backtime +
                ", state='" + state + '\'' +
                '}';
    }

    public back(Integer id, String name, String tel, Date backtime, String state) {
        this.id = id;
        this.name = name;
        this.tel = tel;
        this.backtime = backtime;
        this.state = state;
    }

    public back() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getBacktime() {
        return backtime;
    }

    public void setBacktime(Date backtime) {
        this.backtime = backtime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
