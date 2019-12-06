package com.example.demo.service;

import com.example.demo.dao.PersonDao;
import com.example.demo.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

@Service
public class PersonService {

    private final PersonDao personDao;
    private List<Person> personList = new LinkedList<>();

    @Autowired
    public PersonService(@Qualifier("personDao") PersonDao personDao) {
        this.personDao = personDao;
    }

    public int  addPerson(Person person){
        personList.add(person);
        return personDao.insertPerson(person);
    }
    public List<Person> getAllPeople() {
        return personList;
    }
}