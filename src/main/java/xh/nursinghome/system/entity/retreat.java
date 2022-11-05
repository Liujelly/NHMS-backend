package xh.nursinghome.system.entity;

public class retreat {
    private Integer id;
    private String name;
    private Integer age;
    private String sex;
    private Integer buildingid;
    private String dormitoryid;


    public retreat() {
    }

    public retreat(Integer id, String name, Integer age, String sex, Integer buildingid, String dormitoryid) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.buildingid = buildingid;
        this.dormitoryid = dormitoryid;
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

    public Integer getBuildingid() {
        return buildingid;
    }

    public void setBuildingid(Integer buildingid) {
        this.buildingid = buildingid;
    }


    public String getDormitoryid() {
        return dormitoryid;
    }

    public void setDormitoryid(String dormitoryid) {
        this.dormitoryid = dormitoryid;
    }
}
