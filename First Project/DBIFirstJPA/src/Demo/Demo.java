package Demo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.sql.Date;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Dictionary;
import java.util.List;
import java.util.Map;

public class Demo {
    public static void main(String[] args){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("PersonPU");
        EntityManager em = factory.createEntityManager();

        Person newPerson = new Person();
        newPerson.setSsn("5555050670");
        newPerson.setFirstName("Java");
        newPerson.setLastName("Student");
        newPerson.setDateOfBirth(Date.from(LocalDate.of(1970,6,5).atStartOfDay(ZoneId.systemDefault()).toInstant()));
        newPerson.setAwesome(false);
        newPerson.setAwesomeness(-8.12);

        Address address = new Address();
        address.setAddressNo(new AddressNo(newPerson.getSsn(),10));
        address.setCity("Linz");
        address.setCountry("Austria");
        address.setStreetNo(20);
        address.setStreet("Straße");

        //insertPerson(em, newPerson);
        //insertAddress(em,address);
        /*
        Query query = em.createQuery("select distinct p from Person p join p.addresses a");
        List<Person> result = query.getResultList();
        for (Person p : result){
            System.out.print(p.getSsn() + ": " + p.getFirstName() + " " + p.getLastName());
            p.getAddresses().forEach(a -> System.out.print(" " + a.getCountry() + " " + a.getCity() + " " + a.getStreet() + " " + a.getStreetNo()));
            System.out.println();
        }

        Query q1 = em.createQuery("select distinct a.city from Person p join p.addresses a where p.isAwesome = true ");
        List<String> res1 = q1.getResultList();
        System.out.println("Cities with awesome people: ");
        res1.forEach(c -> System.out.println(c));

        Query q2 = em.createQuery("SELECT NEW Demo.AwsomePeopleCount(p.isAwesome, count(p.ssn)) from Person p group by p.isAwesome");
        List<AwsomePeople> res2 = q2.getResultList();
        System.out.printf("There are %d awesome people and %d people who are not awesome.", res2.stream().filter(a-> a.isAwesome()).findFirst().map(a -> a.getCount()).orElse((long) 0),res2.stream().filter(a-> !a.isAwesome()).findFirst().map(a -> a.getCount()).orElse((long) 0));
        em.close();
        factory.close();

         */
    }

    private static void insertPerson(EntityManager em, Person person){
        em.getTransaction().begin();
        em.persist(person);
        em.getTransaction().commit();
    }
    private static void insertAddress(EntityManager em, Address address){
        em.getTransaction().begin();
        em.persist(address);
        em.getTransaction().commit();
    }
}