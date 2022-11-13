package xh.nursinghome.system.entity;

/**
 * @author ljy
 * @create 2022-11-09 9:18
 */
public class DiseaseWarning {
    private Integer diseaseWarningId;
    private Integer orderId;
    private String orderName;
    private String warningDisease;
    private String diseaseSuggest;

    public Integer getDiseaseWarningId() {
        return diseaseWarningId;
    }

    public void setDiseaseWarningId(Integer diseaseWarningId) {
        this.diseaseWarningId = diseaseWarningId;
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

    public String getWarningDisease() {
        return warningDisease;
    }

    public void setWarningDisease(String warningDisease) {
        this.warningDisease = warningDisease;
    }

    public String getDiseaseSuggest() {
        return diseaseSuggest;
    }

    public void setDiseaseSuggest(String diseaseSuggest) {
        this.diseaseSuggest = diseaseSuggest;
    }
}
