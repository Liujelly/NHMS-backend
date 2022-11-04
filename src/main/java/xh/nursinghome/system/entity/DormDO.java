package xh.nursinghome.system.entity;

public class DormDO {
    private int id;
    private int buildingId;
    private String dormName;
    private String dormType;
    private String bedStatus;
    private int bedAvailable;
    private String elderlyNames;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(int buildingId) {
        this.buildingId = buildingId;
    }

    public String getDormName() {
        return dormName;
    }

    public void setDormName(String dormName) {
        this.dormName = dormName;
    }

    public String getDormType() {
        return dormType;
    }

    public void setDormType(String dormType) {
        this.dormType = dormType;
    }

    public String getBedStatus() {
        return bedStatus;
    }

    public void setBedStatus(String bedStatus) {
        this.bedStatus = bedStatus;
    }

    public int getBedAvailable() {
        return bedAvailable;
    }

    public void setBedAvailable(int bedAvailable) {
        this.bedAvailable = bedAvailable;
    }

    public String getElderlyNames() {
        return elderlyNames;
    }

    public void setElderlyNames(String elderlyNames) {
        this.elderlyNames = elderlyNames;
    }
}
