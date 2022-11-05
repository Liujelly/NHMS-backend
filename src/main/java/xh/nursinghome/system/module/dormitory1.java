package xh.nursinghome.system.module;

public class dormitory1 {
    private int id;
    private int buildingId;
    private String dormName;
    private String dormType;
    private String bedStatus;
    private int bedAvailable;
    private String elderlyIds;

    public String getElderlyIds() {
        return elderlyIds;
    }

    public void setElderlyIds(String elderlyIds) {
        this.elderlyIds = elderlyIds;
    }

    public dormitory1() {
    }

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


}
