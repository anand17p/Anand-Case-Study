package com.hcl.dao;
 
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hcl.model.Admin;
import com.hcl.util.AdminUtil;
 
public class AdminLoginDao {
 
    public boolean authenticateUser(String userId, String password) {
        Admin user = getUserByUserId(userId);         
        if(user!=null && user.getUserId().equals(userId) && user.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
    }
 
    public Admin getUserByUserId(String userId) {
        Session session = AdminUtil.openSession();
        Transaction tx = null;
        Admin user = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Admin where userId='"+userId+"'");
            user = (Admin)query.uniqueResult();
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
