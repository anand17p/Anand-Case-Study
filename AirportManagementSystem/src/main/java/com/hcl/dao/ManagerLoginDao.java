package com.hcl.dao;
 
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hcl.model.Manager;
import com.hcl.util.ManagerUtil;
 
public class ManagerLoginDao {
 
    public boolean authenticateUser(String userId, String password) {
        Manager user = getUserByUserId(userId);         
        if(user!=null && user.getUserId().equals(userId) && user.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
    }
 
    public Manager getUserByUserId(String userId) {
        Session session = ManagerUtil.openSession();
        Transaction tx = null;
        Manager user = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Manager where userId='"+userId+"'");
            user = (Manager)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
    }
     
}
