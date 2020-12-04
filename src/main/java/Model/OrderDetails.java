package Model;

public class OrderDetails {
    private int Id;
    private int OrderId;
    private int ProductId;
    private int price;
    private int Quantity;

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int orderId) {
        OrderId = orderId;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int productId) {
        ProductId = productId;
    }


    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }



    public OrderDetails(int orderId, int productId, int price, int quantity) {

        OrderId = orderId;
        ProductId = productId;
        this.price = price;
        Quantity = quantity;

    }

    public OrderDetails(int Id, int orderId, int productId, int price, int quantity) {
        Id = Id;
        OrderId = orderId;
        ProductId = productId;
        this.price = price;
        Quantity = quantity;

    }
}
