package xh.nursinghome.system.module;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class back1 {
    private Integer id;

    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
    private Date backtime;

    public back1() {
    }

    @Override
    public String toString() {
        return "back1{" +
                "id=" + id +
                ", backtime=" + backtime +
                '}';
    }

    public back1(Integer id, Date backtime) {
        this.id = id;
        this.backtime = backtime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getBacktime() {
        return backtime;
    }

    public void setBacktime(Date backtime) {
        this.backtime = backtime;
    }
}
