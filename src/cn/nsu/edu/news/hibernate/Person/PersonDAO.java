/**
 * 
 */
package cn.nsu.edu.news.hibernate.Person;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import cn.nsu.edu.news.hibernate.BaseService;
import cn.nsu.edu.news.hibernate.News.News;

/**
 * @author LZG
 *
 */
@Service()
public class PersonDAO extends BaseService{

	@Override
	public News getByNewsId(int newsId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Person getByPersonId(int personId) {
		// TODO Auto-generated method stub
		beginTransaction();
		//System.out.print("+++++++"+getSession().get(News.class, id));
		Person person = (Person)getSession().get(Person.class, personId);
		commit();
		closeSession();
		return person;
	}
	
	public Person getByPersonNum(String personNum){
		beginTransaction();
		String hql = "from Person";
		Query query = getSession().createQuery(hql);
		//System.out.println(query.list().size());
		List<Person> persons = (List<Person>) query.list();
		//System.out.println(persons);
		Person person = new Person();
		for(int i=0;i<persons.size();i++) {
			if(personNum.equals(persons.get(i).getPerson_num())){
				person=persons.get(i);
			}
		}
		commit();
		closeSession();
		return person;
	}
	
	@Override
	public List<News> getAllNews() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Person> getAllPerson() {
		// TODO Auto-generated method stub
		beginTransaction();
		Query query = getSession().createQuery("from Person");
		List<Person> persons = query.list();
		commit();
		closeSession();
		return persons;
	}

	@Override
	public void addNews(News n) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addPerson(Person p){
		// TODO Auto-generated method stub
		beginTransaction();
		Person person = p;
		getSession().save(person);
		commit();
		closeSession();
		
	}

	@Override
	public void modifyNews(News newN) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyPerson(Person newP, int personId) {
		// TODO Auto-generated method stub
		beginTransaction();
		Person person = (Person) getSession().get(Person.class, personId);
		getSession().update(newP);
		commit();
		closeSession();
	}

	@Override
	public void deleteNews(int newsId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePerson(int personId) {
		// TODO Auto-generated method stub
		beginTransaction();
		Person person = (Person)getSession().get(Person.class, personId);
		getSession().delete(person);
		commit();
		closeSession();
	}


}
