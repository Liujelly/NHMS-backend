package xh.nursinghome.system.entity;

import java.sql.Date;

public class inarchive {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
    private String tel;
    private String address;
    private Date iatime;

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "inarchive{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", address='" + address + '\'' +
                ", iatime=" + iatime +
                '}';
    }

    public inarchive() {
    }

    public inarchive(Integer id, String name, Integer age, String sex, String address, Date iatime) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.address = address;
        this.iatime = iatime;
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

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getIatime() {
        return iatime;
    }

    public void setIatime(Date iatime) {
        this.iatime = iatime;
    }
}
