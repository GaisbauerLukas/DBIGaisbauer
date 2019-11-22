package Demo;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Address {
    @EmbeddedId
    private AddressNo addressNo;
    @ManyToOne
    @JoinColumn(name="ssn",insertable = false, updatable = false)
    private demo.Person person;
    private String country;
    private String street;
    private Integer streetNo;
    private String city;

    public AddressNo getAddressNo() {
        return addressNo;
    }

    public void setAddressNo(AddressNo addressId) {
        this.addressNo = addressId;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person.removeAddresses(this);
        this.person = person;
        person.addAddresses(this);
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public Integer getStreetNo() {
        return streetNo;
    }

    public void setStreetNo(Integer street_no) {
        this.streetNo = street_no;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
