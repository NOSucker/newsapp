/**
 * 
 */
package cn.nsu.edu.news.hibernate.News;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import cn.nsu.edu.news.hibernate.BaseService;
import cn.nsu.edu.news.hibernate.Person.Person;

/**
 * @author LZG
 *NewsDAO
 */
@Service()
public class NewsDAO extends BaseService{

	@Override
	public News getByNewsId(int newsId) {
		// TODO Auto-generated method stub
		//开启事务
		beginTransaction();
		//System.out.print("+++++++"+getSession().get(News.class, id));
		//通过ID查询
		News news = (News)getSession().get(News.class, newsId);
		//提交事务
		commit();
		//关闭session
		closeSession();
		return news;
	}

	@Override
	public Person getByPersonId(int personId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public News getNewsByTitle(String newsTitle){
		beginTransaction();
		String hql = "from News";
		Query query = getSession().createQuery(hql);
		List<News> newses = (List<News>) query.list();
		News news = new News();
		for(int i=0;i<newses.size();i++) {
			if(newses.get(i).getNews_title().contains(newsTitle)){
				news=newses.get(i);
			}
		}
		commit();
		closeSession();
		return news;
	}

	@Override
	public List<News> getAllNews() {
		// TODO Auto-generated method stub
		beginTransaction();
		Query query = getSession().createQuery("from News");
		List<News> news = query.list();
		commit();
		closeSession();
		return news;
	}

	@Override
	public List<Person> getAllPerson() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addNews(News n) {
		// TODO Auto-generated method stub
		beginTransaction();
		News news = new News();
		news = n;
		getSession().save(news);
		commit();
		closeSession();
	}

	@Override
	public void addPerson(Person p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyNews(News newN) {
		// TODO Auto-generated method stub
		beginTransaction();
		News news = new News();
		getSession().update(newN);
		commit();
		closeSession();
	}

	@Override
	public void modifyPerson(Person newP, int personId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteNews(int newsId) {
		// TODO Auto-generated method stub
		beginTransaction();
//		String hql = "select n from News as n where n.news_ID = ?";
//		Query query = getSession().createQuery(hql);
//		query.setLong(0, id);
//		News news = (News)query.list().get(0);
//		getSession().delete(news);
		News news = (News)getSession().get(News.class, newsId);
		getSession().delete(news);
		commit();
		closeSession();
	}

	@Override
	public void deletePerson(int personId) {
		// TODO Auto-generated method stub
		
	}
	
}
