package xh.nursinghome.system.entity;

import java.sql.Date;

public class reserve {
    private Integer id;
    private String name;
    private String jname;
    private Double reserveprice;
    private String tel;
    private Date date;

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

    public String getJname() {
        return jname;
    }

    public void setJname(String jname) {
        this.jname = jname;
    }

    public Double getReserveprice() {
        return reserveprice;
    }

    public void setReserveprice(Double reserveprice) {
        this.reserveprice = reserveprice;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
