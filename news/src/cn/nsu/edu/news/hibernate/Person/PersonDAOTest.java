/**
 * 
 */
package cn.nsu.edu.news.hibernate.Person;

/**
 * @author LZG
 *
 */
public class PersonDAOTest {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		PersonDAO personDAO = new PersonDAO();
		//根据id查询个人
		//System.out.println(personDAO.getByPersonId(1));
		//查询全部个人信息
		//System.out.println(personDAO.getAllPerson());
		//添加一条个人信息
//		Person person = new Person();
//		person.setPerson_num("255252");
//		person.setPerson_password("235689");
//		personDAO.addPerson(person);
		//System.out.println(personDAO.getAllPerson());
		//通过id删除个人
		//personDAO.deletePerson(12);
		//修改个人信息
//		Person person = new Person();
//		person.setPerson_num("522525");
//		person.setPerson_password("235689");
//		personDAO.modifyPerson(person,13);
		//System.out.println(personDAO.getAllPerson());
		System.out.println(personDAO.getByPersonNum("1234567"));
	}

}
