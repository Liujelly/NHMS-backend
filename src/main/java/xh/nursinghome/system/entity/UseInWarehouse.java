package xh.nursinghome.system.entity;

public class UseInWarehouse {
    private Integer inboundNumber;
    private String mId;
    private String mName;
    private String mSpecification;
    private String mUnit;
    private String mType;
    private String mLocation;

    private float mQuantity;

    private String mSuppliers;

    private float mHighest;

    private float mLowest;




    private String warehousingTime;
    private String productionDate;

    private String shelfLife;
    private String operator;

    public UseInWarehouse() {
    }

    public Integer getInboundNumber() {
        return inboundNumber;
    }

    public void setInboundNumber(Integer inboundNumber) {
        this.inboundNumber = inboundNumber;
    }

    public String getmId() {
        return mId;
    }

    public void setmId(String mId) {
        this.mId = mId;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getmSpecification() {
        return mSpecification;
    }

    public void setmSpecification(String mSpecification) {
        this.mSpecification = mSpecification;
    }

    public String getmUnit() {
        return mUnit;
    }

    public void setmUnit(String mUnit) {
        this.mUnit = mUnit;
    }

    public String getmType() {
        return mType;
    }

    public void setmType(String mType) {
        this.mType = mType;
    }

    public String getmLocation() {
        return mLocation;
    }

    public void setmLocation(String mLocation) {
        this.mLocation = mLocation;
    }

    public float getmQuantity() {
        return mQuantity;
    }

    public void setmQuantity(float mQuantity) {
        this.mQuantity = mQuantity;
    }

    public String getmSuppliers() {
        return mSuppliers;
    }

    public void setmSuppliers(String mSuppliers) {
        this.mSuppliers = mSuppliers;
    }

    public float getmHighest() {
        return mHighest;
    }

    public void setmHighest(float mHighest) {
        this.mHighest = mHighest;
    }

    public float getmLowest() {
        return mLowest;
    }

    public void setmLowest(float mLowest) {
        this.mLowest = mLowest;
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

    public String getShelfLife() {
        return shelfLife;
    }

    public void setShelfLife(String shelfLife) {
        this.shelfLife = shelfLife;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public UseInWarehouse(Integer inboundNumber, String mId, String mName, String mSpecification, String mUnit, String mType, String mLocation, float mQuantity, String mSuppliers, float mHighest, float mLowest, String warehousingTime, String productionDate, String shelfLife, String operator) {
        this.inboundNumber = inboundNumber;
        this.mId = mId;
        this.mName = mName;
        this.mSpecification = mSpecification;
        this.mUnit = mUnit;
        this.mType = mType;
        this.mLocation = mLocation;
        this.mQuantity = mQuantity;
        this.mSuppliers = mSuppliers;
        this.mHighest = mHighest;
        this.mLowest = mLowest;
        this.warehousingTime = warehousingTime;
        this.productionDate = productionDate;
        this.shelfLife = shelfLife;
        this.operator = operator;
    }
}
