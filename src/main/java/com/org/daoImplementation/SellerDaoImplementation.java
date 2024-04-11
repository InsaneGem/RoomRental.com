package com.org.daoImplementation;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.org.dao.SellerDao;
import com.org.dto.Seller;
import com.org.dto.User;

@Component
public class SellerDaoImplementation implements SellerDao 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("shopping");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	@Override
	public void SaveAndUpdateSeller(Seller seller) 
	{
		et.begin();
		em.merge(seller);
		et.commit();
	}
	@Override
	public Seller FetchSellerByEmailAndPassword(String email, String password) {
		Query query = em.createQuery("SELECT s FROM Seller s WHERE s.email=?1");
		query.setParameter(1, email);
		List<Seller> list = query.getResultList();
		for(Seller seller : list)
		{
			if(seller != null)
			{
				String pwd = seller.getPassword();
				if(pwd.equals(password))
				{
					return seller;
				}
			}
		}
		return null;
	}
	@Override
	public Seller FetchSellerById(int id) 
	{
		return em.find(Seller.class, id);
	}
	@Override
	public Seller FetchSellerByEmail(String email) {
			Query query = em.createQuery("select e from Seller e where e.email=?1");
			query.setParameter(1, email);
			List<Seller> list = query.getResultList();
			for (Seller user : list) {
				if (user != null) {
					return user;
				}
			}
			return null;
	}
	@Override
	public String verificationSellerOTP(String email) 
	{
		String otp = "";
		Properties p = System.getProperties();
		p.setProperty("mail.smtp.host", "smtp.gmail.com");
		p.setProperty("mail.smtp.port", "465");
		p.setProperty("mail.smtp.ssl.enable", "true");
		p.setProperty("mail.smtp.auth", "true");
		Session session = Session.getInstance(p, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("sandeepkumar030133@gmail.com", "zncs rgsz nusp ipuv");
			}
		});
		session.setDebug(true);
		MimeMessage message = new MimeMessage(session);
		try {
			message.setFrom("sandeepkumar030133@gmail.com");
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setSubject("OTP for verification");
			Random random = new Random();
			otp = "" + random.nextInt(9) + random.nextInt(9) + random.nextInt(9) + random.nextInt(9);
			message.setText(
					"OTP : " + otp + " donot share with anyone this is securely generated" + " OTP(One Time Password) \n"
							+ "for password verification donot reply at this email, this is auto generated \n"
							+ "email by 'SANDEEP KUMAR'\n"
							+ "\n"
							+ "\n"
							+ "\n"
							+ "\n"
							+ "Thank You have a Worst Day!");
			Transport.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return otp;
	} 
}