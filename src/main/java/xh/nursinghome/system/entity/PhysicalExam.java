package xh.nursinghome.system.entity;

/**
 * @author ljy
 * @create 2022-11-05 22:25
 */
public class PhysicalExam {
    private Integer peId;
    private Integer orderId;
    private String peName;
    private String peGender;
    private Integer peAge;
    private Double peWeight;
    private Double peHeight;
    private Double peTemperature;
    private Integer peHeartRate;
    private Integer peBloodOxygen;
    private Integer peBloodPressureHigh;
    private Integer peBloodPressureLow;
    private Double peBloodGlucose;
    private Double peBloodFat;
    private String peTime;

    public Integer getPeBloodPressureHigh() {
        return peBloodPressureHigh;
    }

    public void setPeBloodPressureHigh(Integer peBloodPressureHigh) {
        this.peBloodPressureHigh = peBloodPressureHigh;
    }

    public Integer getPeBloodPressureLow() {
        return peBloodPressureLow;
    }

    public void setPeBloodPressureLow(Integer peBloodPressureLow) {
        this.peBloodPressureLow = peBloodPressureLow;
    }

    public Double getPeBloodGlucose() {
        return peBloodGlucose;
    }

    public void setPeBloodGlucose(Double peBloodGlucose) {
        this.peBloodGlucose = peBloodGlucose;
    }

    public Double getPeBloodFat() {
        return peBloodFat;
    }

    public void setPeBloodFat(Double peBloodFat) {
        this.peBloodFat = peBloodFat;
    }

    public Integer getPeId() {
        return peId;
    }

    public void setPeId(Integer peId) {
        this.peId = peId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getPeName() {
        return peName;
    }

    public void setPeName(String peName) {
        this.peName = peName;
    }

    public String getPeGender() {
        return peGender;
    }

    public void setPeGender(String peGender) {
        this.peGender = peGender;
    }

    public Integer getPeAge() {
        return peAge;
    }

    public void setPeAge(Integer peAge) {
        this.peAge = peAge;
    }

    public Double getPeWeight() {
        return peWeight;
    }

    public void setPeWeight(Double peWeight) {
        this.peWeight = peWeight;
    }

    public Double getPeHeight() {
        return peHeight;
    }

    public void setPeHeight(Double peHeight) {
        this.peHeight = peHeight;
    }

    public Double getPeTemperature() {
        return peTemperature;
    }

    public void setPeTemperature(Double peTemperature) {
        this.peTemperature = peTemperature;
    }

    public Integer getPeHeartRate() {
        return peHeartRate;
    }

    public void setPeHeartRate(Integer peHeartRate) {
        this.peHeartRate = peHeartRate;
    }

    public Integer getPeBloodOxygen() {
        return peBloodOxygen;
    }

    public void setPeBloodOxygen(Integer peBloodOxygen) {
        this.peBloodOxygen = peBloodOxygen;
    }

    public String getPeTime() {
        return peTime;
    }

    public void setPeTime(String peTime) {
        this.peTime = peTime;
    }
}
