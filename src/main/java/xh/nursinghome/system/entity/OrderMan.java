package xh.nursinghome.system.entity;

/**
 * @author ljy
 * @create 2022-11-05 19:23
 */
public class OrderMan {
    private Integer orderId;
    private String orderName;
    private String orderIdCard;
    private String orderState;

    public OrderMan(Integer orderId, String orderName, String orderIdCard, String orderState) {
        this.orderId = orderId;
        this.orderName = orderName;
        this.orderIdCard = orderIdCard;
        this.orderState = orderState;
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

    public String getOrderIdCard() {
        return orderIdCard;
    }

    public void setOrderIdCard(String orderIdCard) {
        this.orderIdCard = orderIdCard;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    public OrderMan() {
    }
}
