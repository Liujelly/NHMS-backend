package xh.nursinghome.system.entity;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class leave {
    private Integer id;
    private String name;
    private String tel;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
    private Date ltime;
    private String duration;

    public leave() {
    }

    @Override
    public String toString() {
        return "leave{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", ltime=" + ltime +
                ", duration='" + duration + '\'' +
                '}';
    }

    public leave(Integer id, String name, String tel, Date ltime, String duration) {
        this.id = id;
        this.name = name;
        this.tel = tel;
        this.ltime = ltime;
        this.duration = duration;
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

    public Date getLtime() {
        return ltime;
    }

    public void setLtime(Date ltime) {
        this.ltime = ltime;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
}
