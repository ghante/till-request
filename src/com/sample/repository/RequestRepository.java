package com.sample.repository;


import com.sample.model.TillRequest;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class RequestRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void add(String req) {
        Session session = sessionFactory.getCurrentSession();
        TillRequest tillRequest = new TillRequest();
        tillRequest.setName(req);
        session.save(tillRequest);
    }
}
