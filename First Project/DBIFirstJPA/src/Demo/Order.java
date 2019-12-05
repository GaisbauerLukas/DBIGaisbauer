package Demo;

import com.sun.istack.NotNull;

import javax.persistence.*;
import java.util.Date;

public class Order {
    @Id
    @GeneratedValue
    private int orderID;
    @NotNull
    @ManyToOne
    @JoinColumn(name="ssn",insertable = false, updatable = false)
    private String ssn;
    @NotNull
    @OneToOne
    @JoinColumn(name="addressNo",insertable = false, updatable = false)
    private short adressNo;
    @NotNull
    private Date orderDate;
    @NotNull
    private short orderState;

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

    public short getAdressNo() {
        return adressNo;
    }

    public void setAdressNo(short adressNo) {
        this.adressNo = adressNo;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public short getOrderState() {
        return orderState;
    }

    public void setOrderState(short orderState) {
        this.orderState = orderState;
    }
}
