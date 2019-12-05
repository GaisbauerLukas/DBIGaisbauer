package Demo;

import com.sun.istack.NotNull;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

public class OrderItem {
    @Id
    @ManyToOne
    @JoinColumn(name="orderID",insertable = false, updatable = false)
    private int orderID;
    @Id
    @OneToOne
    @JoinColumn(name="productId",insertable = false, updatable = false)
    private int productId;
    @NotNull
    private int amount;

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
