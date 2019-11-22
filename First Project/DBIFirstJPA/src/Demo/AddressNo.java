package Demo;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class AddressNo implements Serializable {
    private String ssn;
    private Integer addressNo;


    public AddressNo(String ssn, Integer addressId) {
        this.ssn = ssn;
        this.addressNo = addressId;
    }

    public AddressNo() {

    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

    public Integer getAddressNo() {
        return addressNo;
    }

    public void setAddressNo(Integer addressId) {
        this.addressNo = addressId;
    }
}
