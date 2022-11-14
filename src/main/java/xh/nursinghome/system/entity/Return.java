package xh.nursinghome.system.entity;

public class Return {
    private Integer outboundNumber;
    private Integer inboundNumber;
    private String materialNumber;
    private String materialName;
    private float warehousingQuantity;
    private String warehousingTime;
    private String productionDate;
    private String mSupplier;
    private String shelfLife;
    private String inOperator;
    public Return() {

    }

    @Override
    public String toString() {
        return "OutRecord{" +
                "outboundNumber=" + outboundNumber +
                ", inboundNumber=" + inboundNumber +
                ", materialNumber='" + materialNumber + '\'' +
                ", materialName='" + materialName + '\'' +
                ", warehousingQuantity=" + warehousingQuantity +
                ", warehousingTime='" + warehousingTime + '\'' +
                ", productionDate='" + productionDate + '\'' +
                ", mSupplier='" + mSupplier + '\'' +
                ", shelfLife='" + shelfLife + '\'' +
                ", inOperator='" + inOperator + '\'' +
                '}';
    }

    public Integer getOutboundNumber() {
        return outboundNumber;
    }

    public void setOutboundNumber(Integer outboundNumber) {
        this.outboundNumber = outboundNumber;
    }

    public Integer getInboundNumber() {
        return inboundNumber;
    }

    public void setInboundNumber(Integer inboundNumber) {
        this.inboundNumber = inboundNumber;
    }

    public String getMaterialNumber() {
        return materialNumber;
    }

    public void setMaterialNumber(String materialNumber) {
        this.materialNumber = materialNumber;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public float getWarehousingQuantity() {
        return warehousingQuantity;
    }

    public void setWarehousingQuantity(float warehousingQuantity) {
        this.warehousingQuantity = warehousingQuantity;
    }

    public String getWarehousingTime() {
        return warehousingTime;
    }

    public void setWarehousingTime(String warehousingTime) {
        this.warehousingTime = warehousingTime;
    }

    public String getProductionDate() {
        return productionDate;
    }

    public void setProductionDate(String productionDate) {
        this.productionDate = productionDate;
    }

    public String getmSupplier() {
        return mSupplier;
    }

    public void setmSupplier(String mSupplier) {
        this.mSupplier = mSupplier;
    }

    public String getShelfLife() {
        return shelfLife;
    }

    public void setShelfLife(String shelfLife) {
        this.shelfLife = shelfLife;
    }

    public String getInOperator() {
        return inOperator;
    }

    public void setInOperator(String inOperator) {
        this.inOperator = inOperator;
    }

    public Return(Integer outboundNumber, Integer inboundNumber, String materialNumber, String materialName, float warehousingQuantity, String warehousingTime, String productionDate, String mSupplier, String shelfLife, String inOperator) {
        this.outboundNumber = outboundNumber;
        this.inboundNumber = inboundNumber;
        this.materialNumber = materialNumber;
        this.materialName = materialName;
        this.warehousingQuantity = warehousingQuantity;
        this.warehousingTime = warehousingTime;
        this.productionDate = productionDate;
        this.mSupplier = mSupplier;
        this.shelfLife = shelfLife;
        this.inOperator = inOperator;
    }
}
