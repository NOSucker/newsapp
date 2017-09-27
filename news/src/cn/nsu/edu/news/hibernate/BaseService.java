/**
 * 
 */
package cn.nsu.edu.news.hibernate;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import cn.nsu.edu.news.hibernate.News.News;
import cn.nsu.edu.news.hibernate.Person.Person;

/**
 * @author LZG
 *增删该查抽象类
 */
public abstract class BaseService {
	@Resource()
	Configuration configuration;
	@Resource()
	Transaction transaction;
	@Resource()
	Session session;
	
	//获取session
	public Session getSession(){
		if(null==session){
			Configuration cfg = new Configuration().configure();
			SessionFactory sessionFactory= cfg.buildSessionFactory();
			session = sessionFactory.openSession();
		}
		return session;
	}
	
	//开启事务
	public void beginTransaction(){
		transaction = getSession().beginTransaction();
	}
	
	//提交事务
	public void commit(){
		getTransaction().commit();
	}
	
	//关闭session
	public void closeSession(){
		getSession().close();
	}
	
	public abstract News getByNewsId(int newsId);
	public abstract Person getByPersonId(int personId);
	public abstract List<News> getAllNews();
	public abstract List<Person> getAllPerson();
	public abstract void addNews(News n);
	public abstract void addPerson(Person p);
	public abstract void modifyNews(News newN);
	public abstract void modifyPerson(Person newP, int personId);
	public abstract void deleteNews(int newsId);
	public abstract void deletePerson(int personId);

	/**
	 * @return the configuration
	 */
	public Configuration getConfiguration() {
		return configuration;
	}

	/**
	 * @param configuration the configuration to set
	 */
	public void setConfiguration(Configuration configuration) {
		this.configuration = configuration;
	}

	/**
	 * @return the transaction
	 */
	public Transaction getTransaction() {
		return transaction;
	}

	/**
	 * @param transaction the transaction to set
	 */
	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}

	/**
	 * @param session the session to set
	 */
	public void setSession(Session session) {
		this.session = session;
	}
	
}
