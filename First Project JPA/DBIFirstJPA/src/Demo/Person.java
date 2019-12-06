package Demo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Entity
public class Person {
    @Id
    private String ssn;
    private Date dateOfBirth;
    private String firstName;
    private String lastName;
    private boolean isAwesome;
    private Double awesomeness;
    private BigDecimal wealth;

    @OneToMany(mappedBy = "person", cascade = CascadeType.PERSIST)
    private List<Address> addresses = new ArrayList<>();

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

    public Date getDateOfBirth()    {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public boolean isAwesome() {
        return isAwesome;
    }

    public void setAwesome(boolean awesome) {
        isAwesome = awesome;
    }

    public Double getAwesomeness() {
        return awesomeness;
    }

    public void setAwesomeness(Double awesomeness) {
        this.awesomeness = awesomeness;
    }

    public BigDecimal getWealth() {
        return wealth;
    }

    public void setWealth(BigDecimal wealth) {
        this.wealth = wealth;
    }

    public void addAddresses(Address address){
        addresses.add(address);
    }

    public void removeAddresses(Address address){
        addresses.remove(address);
    }

    public List<Address> getAddresses() {
        return addresses;
    }
}
