/**
 * 
 */
package cn.nsu.edu.news.action;

import java.util.ArrayList;
import java.util.List;

import cn.nsu.edu.news.hibernate.News.News;
import cn.nsu.edu.news.hibernate.News.NewsDAO;
import cn.nsu.edu.news.hibernate.Person.Person;
import cn.nsu.edu.news.hibernate.Person.PersonDAO;

import com.opensymphony.xwork2.ActionSupport;


/**
 * @author LZG
 *
 */
public class PersonAction extends ActionSupport{
	private Person person = new Person();

	/**
	 * @return the person
	 */
	public Person getPerson() {
		return person;
	}

	/**
	 * @param person the person to set
	 */
	public void setPerson(Person person) {
		this.person = person;
	}

	public String login(){
		PersonDAO personDAO = new PersonDAO();
		//System.out.println(person);
		Person dataPerson = personDAO.getByPersonNum(person.getPerson_num());
		//System.out.println(dataPerson);
		//System.out.println(person);
		//数据库验证登录
		
		String state=(dataPerson.getPerson_password().equals(person.getPerson_password())) ? "loginSuccess" :"loginFailed";
		//System.out.println(state);
		return state;
//		if(!dataPerson.getPerson_password().equals(person.getPerson_password())){
//			return "loginSuccess";
//		}
//		System.out.println("hehheh");
//		return "loginSuccess";
	}
	
	public String register(){
		PersonDAO personDAO = new PersonDAO();
		personDAO.addPerson(person);
		return "register";
	}
	
}
