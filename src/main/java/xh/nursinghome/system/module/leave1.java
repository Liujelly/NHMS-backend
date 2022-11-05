package xh.nursinghome.system.module;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class leave1 {
    private Integer id;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
    private Date ltime;
    private String duration;

    public leave1() {
    }

    public leave1(Integer id, Date ltime, String duration) {
        this.id = id;
        this.ltime = ltime;
        this.duration = duration;
    }

    @Override
    public String toString() {
        return "leave1{" +
                "id=" + id +
                ", ltime=" + ltime +
                ", duration='" + duration + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
