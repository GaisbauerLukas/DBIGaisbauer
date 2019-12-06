package Demo;

import com.sun.istack.NotNull;

import javax.persistence.*;

@Entity
public class OrderItem {
    @Id
    @ManyToOne
    @JoinColumn(name="orderID",insertable = false, updatable = false)
    private Order orderID;
    @Id
    @OneToOne
    @JoinColumn(name="productId",insertable = false, updatable = false)
    private Product productId;
    @NotNull
    private Integer amount;

    public Order getOrderID() {
        return orderID;
    }

    public void setOrderID(Order orderID) {
        this.orderID = orderID;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}
