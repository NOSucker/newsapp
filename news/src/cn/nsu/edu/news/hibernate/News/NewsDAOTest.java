/**
 * 
 */
package cn.nsu.edu.news.hibernate.News;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author LZG
 *
 */
public class NewsDAOTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NewsDAO newsDAO = new NewsDAO();
		//����id��ѯ
		//System.out.println(newsDAO.getByNewsId(1));
		//��ѯȫ������
		//System.out.println(newsDAO.getAllNews());
		//���һ������
//		News news = new News();
//		news.setPerson_ID(1);
//		news.setNews_title("��ɼ��ձ�");
//		news.setNews_content("������֮����");
//		news.setNews_publisher("kobe bryant");
//		news.setNews_commons("MANBA!");
//		news.setNews_time("2016-6-29");
//		newsDAO.addNews(news);
		//����idɾ������
		//newsDAO.deleteNews(3);
		//System.out.println(newsDAO.getAllNews());
		System.out.println(newsDAO.getNewsByTitle("��CC"));
//		Configuration cfg = new Configuration().configure();
//		SessionFactory sessionFactory= cfg.buildSessionFactory();
//		
//		Session session = null;
//		try {
//			session=sessionFactory.openSession();
//			
//			News news = (News)session.get(News.class, 1);
//			System.out.println(news.getNews_title());
//			session.close();
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
		
	
	}
	
}
