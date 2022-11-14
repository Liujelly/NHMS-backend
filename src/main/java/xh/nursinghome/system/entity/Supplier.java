package xh.nursinghome.system.entity;

public class Supplier {
    private Integer supplierNum;
    private String supplierName;
    private String supplierAddress;
    private String businessScope;
    private String supplierPerson;
    private String supplierPhone;

    public Supplier(Integer supplierNum, String supplierName, String supplierAddress, String businessScope, String supplierPerson, String supplierPhone) {
        this.supplierNum = supplierNum;
        this.supplierName = supplierName;
        this.supplierAddress = supplierAddress;
        this.businessScope = businessScope;
        this.supplierPerson = supplierPerson;
        this.supplierPhone = supplierPhone;
    }

    public Supplier() {

    }

    @Override
    public String toString() {
        return "Supplier{" +
                "supplierNum=" + supplierNum +
                ", supplierName='" + supplierName + '\'' +
                ", supplierAddress='" + supplierAddress + '\'' +
                ", businessScope='" + businessScope + '\'' +
                ", supplierPerson='" + supplierPerson + '\'' +
                ", supplierPhone='" + supplierPhone + '\'' +
                '}';
    }

    public Integer getSupplierNum() {
        return supplierNum;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public String getSupplierAddress() {
        return supplierAddress;
    }

    public String getBusinessScope() {
        return businessScope;
    }

    public String getSupplierPerson() {
        return supplierPerson;
    }

    public String getSupplierPhone() {
        return supplierPhone;
    }

    public void setSupplierNum(Integer supplierNum) {
        this.supplierNum = supplierNum;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public void setSupplierAddress(String supplierAddress) {
        this.supplierAddress = supplierAddress;
    }

    public void setBusinessScope(String businessScope) {
        this.businessScope = businessScope;
    }

    public void setSupplierPerson(String supplierPerson) {
        this.supplierPerson = supplierPerson;
    }

    public void setSupplierPhone(String supplierPhone) {
        this.supplierPhone = supplierPhone;
    }
}
