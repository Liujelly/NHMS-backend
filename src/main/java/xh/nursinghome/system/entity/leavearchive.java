package xh.nursinghome.system.entity;

import java.sql.Date;

public class leavearchive {
    private Integer id;
    private String name;
    private String tel;
    private Date ltime;
    private Date backtime;

    @Override
    public String toString() {
        return "leavearchive{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", ltime=" + ltime +
                ", backtime=" + backtime +
                '}';
    }

    public leavearchive() {
    }

    public leavearchive(Integer id, String name, String tel, Date ltime, Date backtime) {
        this.id = id;
        this.name = name;
        this.tel = tel;
        this.ltime = ltime;
        this.backtime = backtime;
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

    public Date getBacktime() {
        return backtime;
    }

    public void setBacktime(Date backtime) {
        this.backtime = backtime;
    }
}
