package xh.nursinghome.system.entity;

public class ChangingStandardDO {
    private int id;
    private String roomType;
    private String careLevel;
    private double serviceFee;
    private double bedFee;
    private double foodFee;
    private double acFee;
    private double amount;
    private String discount;
    private double prepaid;
    private String gmtCreated;
    private String gmtModified;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getCareLevel() {
        return careLevel;
    }

    public void setCareLevel(String careLevel) {
        this.careLevel = careLevel;
    }

    public double getServiceFee() {
        return serviceFee;
    }

    public void setServiceFee(double serviceFee) {
        this.serviceFee = serviceFee;
    }

    public double getBedFee() {
        return bedFee;
    }

    public void setBedFee(double bedFee) {
        this.bedFee = bedFee;
    }

    public double getFoodFee() {
        return foodFee;
    }

    public void setFoodFee(double foodFee) {
        this.foodFee = foodFee;
    }

    public double getAcFee() {
        return acFee;
    }

    public void setAcFee(double acFee) {
        this.acFee = acFee;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public double getPrepaid() {
        return prepaid;
    }

    public void setPrepaid(double prepaid) {
        this.prepaid = prepaid;
    }

    public String getGmtCreated() {
        return gmtCreated;
    }

    public void setGmtCreated(String gmtCreated) {
        this.gmtCreated = gmtCreated;
    }

    public String getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(String gmtModified) {
        this.gmtModified = gmtModified;
    }
}
