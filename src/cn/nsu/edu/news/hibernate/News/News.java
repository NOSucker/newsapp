/**
 * 
 */
package cn.nsu.edu.news.hibernate.News;

import org.hibernate.annotations.Entity;

/**
 * @author LZG
 *新闻实体持久类
 */
@Entity
public class News {
	private int news_ID;
	private int person_ID;
	private String news_title;
	private String news_content;
	private String news_publisher;
	private String news_commons;
	private String news_time;
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
	 * @return the person_ID
	 */
	public int getPerson_ID() {
		return person_ID;
	}
	/**
	 * @param person_ID the person_ID to set
	 */
	public void setPerson_ID(int person_ID) {
		this.person_ID = person_ID;
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
	/**
	 * @return the news_content
	 */
	public String getNews_content() {
		return news_content;
	}
	/**
	 * @param news_content the news_content to set
	 */
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	/**
	 * @return the news_publisher
	 */
	public String getNews_publisher() {
		return news_publisher;
	}
	/**
	 * @param news_publisher the news_publisher to set
	 */
	public void setNews_publisher(String news_publisher) {
		this.news_publisher = news_publisher;
	}
	/**
	 * @return the news_commons
	 */
	public String getNews_commons() {
		return news_commons;
	}
	/**
	 * @param news_commons the news_commons to set
	 */
	public void setNews_commons(String news_commons) {
		this.news_commons = news_commons;
	}
	/**
	 * @return the news_time
	 */
	public String getNews_time() {
		return news_time;
	}
	/**
	 * @param news_time the news_time to set
	 */
	public void setNews_time(String news_time) {
		this.news_time = news_time;
	}
	
	@Override
	public String toString(){
		return this.news_ID+"\t"+this.person_ID+"\t"+this.news_title+"\t"+this.news_content+"\t"+this.news_publisher+"\t"+this.news_commons+"\t"+this.news_time;
	}
}
