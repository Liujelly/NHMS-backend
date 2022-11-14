package xh.nursinghome.system.entity;

public class price {
    private Integer id;
    private String name;
    private Double allprice;
    private Double accumulated;
    private Double leaveprice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getAllprice() {
        return allprice;
    }

    public void setAllprice(Double allprice) {
        this.allprice = allprice;
    }

    public Double getAccumulated() {
        return accumulated;
    }

    public void setAccumulated(Double accumulated) {
        this.accumulated = accumulated;
    }

    public Double getLeaveprice() {
        return leaveprice;
    }

    public void setLeaveprice(Double leaveprice) {
        this.leaveprice = leaveprice;
    }
}
