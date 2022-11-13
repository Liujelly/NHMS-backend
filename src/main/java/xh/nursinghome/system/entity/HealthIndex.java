package xh.nursinghome.system.entity;

/**
 * @author ljy
 * @create 2022-11-06 9:49
 */
public class HealthIndex {
    private Integer healthIndexId;
    private Integer orderId;
    private String orderName;
    private Double bmi;
    private Integer heartRateIndex;
    private Integer  bloodOxygenIndex;
    private Integer  bloodPressureIndex;
    private Integer  bloodGlucoseIndex;
    private Integer  bloodFatIndex;
    private Double  temperatureIndex;
    private Integer healthIndexNum;
    private String analyse;
    private String suggest;
    private String disease;

    public String getDisease() {
        return disease;
    }

    public void setDisease(String disease) {
        this.disease = disease;
    }

    public String getAnalyse() {
        return analyse;
    }

    public void setAnalyse(String analyse) {
        this.analyse = analyse;
    }

    public String getSuggest() {
        return suggest;
    }

    public void setSuggest(String suggest) {
        this.suggest = suggest;
    }

    public Integer getHealthIndexNum() {
        return healthIndexNum;
    }

    public void setHealthIndexNum(Integer healthIndexNum) {
        this.healthIndexNum = healthIndexNum;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public Integer getHealthIndexId() {
        return healthIndexId;
    }

    public void setHealthIndexId(Integer healthIndexId) {
        this.healthIndexId = healthIndexId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Double getBmi() {
        return bmi;
    }

    public void setBmi(Double bmi) {
        this.bmi = bmi;
    }

    public Integer getHeartRateIndex() {
        return heartRateIndex;
    }

    public void setHeartRateIndex(Integer heartRateIndex) {
        this.heartRateIndex = heartRateIndex;
    }

    public Integer getBloodOxygenIndex() {
        return bloodOxygenIndex;
    }

    public void setBloodOxygenIndex(Integer bloodOxygenIndex) {
        this.bloodOxygenIndex = bloodOxygenIndex;
    }

    public Integer getBloodPressureIndex() {
        return bloodPressureIndex;
    }

    public void setBloodPressureIndex(Integer bloodPressureIndex) {
        this.bloodPressureIndex = bloodPressureIndex;
    }

    public Integer getBloodGlucoseIndex() {
        return bloodGlucoseIndex;
    }

    public void setBloodGlucoseIndex(Integer bloodGlucoseIndex) {
        this.bloodGlucoseIndex = bloodGlucoseIndex;
    }

    public Integer getBloodFatIndex() {
        return bloodFatIndex;
    }

    public void setBloodFatIndex(Integer bloodFatIndex) {
        this.bloodFatIndex = bloodFatIndex;
    }

    public Double getTemperatureIndex() {
        return temperatureIndex;
    }

    public void setTemperatureIndex(Double temperatureIndex) {
        this.temperatureIndex = temperatureIndex;
    }


}
