package com.sample.repository;

import com.sample.model.Request;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class RequestsRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private TillRequestRepository tillRequestRepository;

    public void add(String req, int tillNumber) {
        Request request = new Request();
        request.setTillNumber(tillNumber);
        request.setTillRequest(tillRequestRepository.get(req));
        Session session = sessionFactory.getCurrentSession();
        session.save(request);
    }


    public List<Request> getPending() {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Request.class);
        criteria.add(Restrictions.eq("done", false));
        Criteria tillRequestCriteria = criteria.createCriteria("tillRequest");
        tillRequestCriteria.addOrder(Order.asc("priority"));
        return criteria.list();
    }
}
