package Demo;

import com.sun.istack.NotNull;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Order {
    @Id
    @GeneratedValue
    private Integer orderID;
    @NotNull
    @ManyToOne
    @JoinColumn(name="ssn",insertable = false, updatable = false)
    private Person ssn;
    @NotNull
    @OneToOne
    @JoinColumn(name="addressNo",insertable = false, updatable = false)
    private Address adressNo;
    @NotNull
    private Date orderDate;
    @NotNull
    private short orderState;

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }

    public Person getSsn() {
        return ssn;
    }

    public void setSsn(Person ssn) {
        this.ssn = ssn;
    }

    public Address getAdressNo() {
        return adressNo;
    }

    public void setAdressNo(Address adressNo) {
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
