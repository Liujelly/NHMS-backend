package xh.nursinghome.system.entity;


/**
@author ljy
@create 2022-11-09 9:17
*/public class HealthLevel {

    private Integer healthLevelId;
    private Integer orderId;
    private String orderName;
    private Integer healthIndexNum;
    private String healthLevelNum;
    private String suggest;

    public Integer getHealthLevelId() {
        return healthLevelId;
    }

    public void setHealthLevelId(Integer healthLevelId) {
        this.healthLevelId = healthLevelId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public Integer getHealthIndexNum() {
        return healthIndexNum;
    }

    public void setHealthIndexNum(Integer healthIndexNum) {
        this.healthIndexNum = healthIndexNum;
    }

    public String getHealthLevelNum() {
        return healthLevelNum;
    }

    public void setHealthLevelNum(String healthLevelNum) {
        this.healthLevelNum = healthLevelNum;
    }

    public String getSuggest() {
        return suggest;
    }

    public void setSuggest(String suggest) {
        this.suggest = suggest;
    }
}
