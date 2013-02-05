package com.sample.repository;


import com.sample.model.TillRequest;
import org.hibernate.Criteria;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class TillRequestRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void add(String req) {
        Session session = sessionFactory.getCurrentSession();
        TillRequest tillRequest = new TillRequest();
        tillRequest.setName(req);
        session.save(tillRequest);
    }

    public List<TillRequest> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(TillRequest.class);
        return criteria.list();
    }

    public TillRequest get(String req) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(TillRequest.class);
        criteria.add(Restrictions.eq("name", req));
        return (TillRequest) criteria.uniqueResult();
    }
}
