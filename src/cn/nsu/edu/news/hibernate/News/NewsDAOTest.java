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
		//根据id查询
		//System.out.println(newsDAO.getByNewsId(1));
		//查询全部新闻
		//System.out.println(newsDAO.getAllNews());
		//添加一条新闻
//		News news = new News();
//		news.setPerson_ID(1);
//		news.setNews_title("洛杉矶日报");
//		news.setNews_content("黑曼巴之王！");
//		news.setNews_publisher("kobe bryant");
//		news.setNews_commons("MANBA!");
//		news.setNews_time("2016-6-29");
//		newsDAO.addNews(news);
		//根据id删除新闻
		//newsDAO.deleteNews(3);
		//System.out.println(newsDAO.getAllNews());
		System.out.println(newsDAO.getNewsByTitle("川CC"));
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
