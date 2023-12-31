package xh.nursinghome.system.entity;

public class checkin {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
    private String tel;
    private String address;
    private String idcard;
    private String nation;
    private String education;


    public checkin() {
    }

    public checkin(Integer id, String name, Integer age, String sex, String tel, String address, String idcard, String nation, String education) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.tel = tel;
        this.address = address;
        this.idcard = idcard;
        this.nation = nation;
        this.education = education;
    }

    @Override
    public String toString() {
        return "checkin{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age='" + age + '\'' +
                ", sex='" + sex + '\'' +
                ", tel='" + tel + '\'' +
                ", address='" + address + '\'' +
                ", idcard=" + idcard +
                ", nation='" + nation + '\'' +
                ", education='" + education + '\'' +
                '}';
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

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }
}
