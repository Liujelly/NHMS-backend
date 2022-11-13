package xh.nursinghome.system.entity;


import java.sql.Date;

public class Apply {
    private Integer Aid;
    private String Aname;
    private Integer Aage;
    private String Asex;
    private String Aphone;
    private String Aemail;
    private String Aaddress;

    private Date Applytime;

    private String Acometime;

    private Integer Anumber;
    private String Aactive;
    private String Aheath;
    private  String Astate;
    private  String Apname;
    private Double  AactiveTime;

    public Apply(Integer aid, String aname, Integer aage, String asex, String aphone, String aemail, String aaddress, Date applytime, String acometime, Integer anumber, String aactive, String aheath, String astate, String apname, Double aactiveTime) {
        Aid = aid;
        Aname = aname;
        Aage = aage;
        Asex = asex;
        Aphone = aphone;
        Aemail = aemail;
        Aaddress = aaddress;
        Applytime = applytime;
        Acometime = acometime;
        Anumber = anumber;
        Aactive = aactive;
        Aheath = aheath;
        Astate = astate;
        Apname = apname;
        AactiveTime = aactiveTime;
    }

    public Integer getAid() {
        return Aid;
    }

    public void setAid(Integer aid) {
        Aid = aid;
    }

    public String getAname() {
        return Aname;
    }

    public void setAname(String aname) {
        Aname = aname;
    }

    public Integer getAage() {
        return Aage;
    }

    public void setAage(Integer aage) {
        Aage = aage;
    }

    public String getAsex() {
        return Asex;
    }

    public void setAsex(String asex) {
        Asex = asex;
    }

    public String getAphone() {
        return Aphone;
    }

    public void setAphone(String aphone) {
        Aphone = aphone;
    }

    public String getAemail() {
        return Aemail;
    }

    public void setAemail(String aemail) {
        Aemail = aemail;
    }

    public String getAaddress() {
        return Aaddress;
    }

    public void setAaddress(String aaddress) {
        Aaddress = aaddress;
    }

    public Date getApplytime() {
        return Applytime;
    }

    public void setApplytime(Date applytime) {
        Applytime = applytime;
    }

    public String getAcometime() {
        return Acometime;
    }

    public void setAcometime(String acometime) {
        Acometime = acometime;
    }

    public Integer getAnumber() {
        return Anumber;
    }

    public void setAnumber(Integer anumber) {
        Anumber = anumber;
    }

    public String getAactive() {
        return Aactive;
    }

    public void setAactive(String aactive) {
        Aactive = aactive;
    }

    public String getAheath() {
        return Aheath;
    }

    public void setAheath(String aheath) {
        Aheath = aheath;
    }

    public String getAstate() {
        return Astate;
    }

    public void setAstate(String astate) {
        Astate = astate;
    }

    public String getApname() {
        return Apname;
    }

    public void setApname(String apname) {
        Apname = apname;
    }

    public Double getAactiveTime() {
        return AactiveTime;
    }

    public void setAactiveTime(Double aactiveTime) {
        AactiveTime = aactiveTime;
    }

    public Apply() {
    }
}
