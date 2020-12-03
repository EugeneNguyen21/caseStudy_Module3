package Model;

public class Order {
    private int id;
    private int customerId;
    private int orderNumber;

    public Order(int id, int customerId, int orderNumber) {
        this.id = id;
        this.customerId = customerId;
        this.orderNumber = orderNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(int orderNumber) {
        this.orderNumber = orderNumber;
    }
}
