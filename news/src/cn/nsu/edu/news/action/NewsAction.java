/**
 * 
 */
package cn.nsu.edu.news.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.apache.struts2.ServletActionContext;

import cn.nsu.edu.news.hibernate.News.News;
import cn.nsu.edu.news.hibernate.News.NewsDAO;
import cn.nsu.edu.news.hibernate.Person.PersonDAO;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author LZG
 *
 */
public class NewsAction extends ActionSupport{
	private int news_ID;
	private News news = new News();
	private List<News> newsList = new ArrayList<News>();
	private String news_title;
	
	/**
	 * @return the news_ID
	 */
	public int getNews_ID() {
		return news_ID;
	}

	/**
	 * @param news_ID the news_ID to set
	 */
	public void setNews_ID(int news_ID) {
		this.news_ID = news_ID;
	}

	/**
	 * @return the news
	 */
	public News getNews() {
		return news;
	}

	/**
	 * @param news the news to set
	 */
	public void setNews(News news) {
		this.news = news;
	}

	/**
	 * @return the newsList
	 */
	public List<News> getNewsList() {
		return newsList;
	}

	/**
	 * @param newsList the newsList to set
	 */
	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	/**
	 * @return the news_title
	 */
	public String getNews_title() {
		return news_title;
	}

	/**
	 * @param news_title the news_title to set
	 */
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String list(){
		NewsDAO newsDAO = new NewsDAO();
		newsList = newsDAO.getAllNews();
		return "list";
	}
	
	public String openNews(){
		NewsDAO newsDAO = new NewsDAO();
		news = newsDAO.getByNewsId(news_ID);
		return "openNews";
	}
	
	public String focus(){
		NewsDAO newsDAO = new NewsDAO();
		news = newsDAO.getByNewsId(news_ID);
		return "json";
		//return "focus";
	}
	
	public String search(){
		NewsDAO newsDAO = new NewsDAO();
		news = newsDAO.getNewsByTitle(news_title);
		return "search";
	}
	
}
