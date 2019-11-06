package com.suman.Metro;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
/**
 * Hello world!
 *
 */
public class App 
{
   

	public static void main( String[] args )
    {
    	Login ln=new Login();
    	ln.setId(1);
    	ln.setUsername("Suman");
    	ln.setPassword("12345");
       Configuration con=new Configuration().configure().addAnnotatedClass(Login.class);
       
       ServiceRegistry reg=new StandardServiceRegistryBuilder().applySettings(con.getProperty("hibernate.cfg.reg")).buildServiceRegistry();
       
       	SessionFactory s2=con.buildSessionFactory(reg);
    	Session s1=s2.openSession();
    	Transaction tx=s1.beginTransaction();
    	s1.save(ln);
    	tx.commit();
    }
}
