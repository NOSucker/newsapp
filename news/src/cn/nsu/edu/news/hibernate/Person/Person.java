/**
 * 
 */
package cn.nsu.edu.news.hibernate.Person;

import java.io.Serializable;

import org.springframework.stereotype.Component;

/**
 * @author LZG
 *个人用户实体持久类
 */
@Component()
public class Person implements Serializable{
	private int person_ID;
	private String person_num;
	private String person_password;
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
	 * @return the person_num
	 */
	public String getPerson_num() {
		return person_num;
	}
	/**
	 * @param person_num the person_num to set
	 */
	public void setPerson_num(String person_num) {
		this.person_num = person_num;
	}
	/**
	 * @return the person_password
	 */
	public String getPerson_password() {
		return person_password;
	}
	/**
	 * @param person_password the person_password to set
	 */
	public void setPerson_password(String person_password) {
		this.person_password = person_password;
	}
	@Override
	public String toString(){
		return this.person_ID+"\t"+this.person_num+"\t"+this.person_password;
	}
	
}
