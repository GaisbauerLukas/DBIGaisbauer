package Demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Product {
    @Id
    @GeneratedValue
    private Integer ProductID;
    private String description;
    private Number price;
    public Integer getProductID() {
        return ProductID;
    }

    public void setProductID(Integer productID) {
        ProductID = productID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Number getPrice() {
        return price;
    }

    public void setPrice(Number price) {
        this.price = price;
    }
}
