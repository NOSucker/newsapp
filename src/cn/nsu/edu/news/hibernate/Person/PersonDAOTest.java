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
		//����id��ѯ����
		//System.out.println(personDAO.getByPersonId(1));
		//��ѯȫ��������Ϣ
		//System.out.println(personDAO.getAllPerson());
		//���һ��������Ϣ
//		Person person = new Person();
//		person.setPerson_num("255252");
//		person.setPerson_password("235689");
//		personDAO.addPerson(person);
		//System.out.println(personDAO.getAllPerson());
		//ͨ��idɾ������
		//personDAO.deletePerson(12);
		//�޸ĸ�����Ϣ
//		Person person = new Person();
//		person.setPerson_num("522525");
//		person.setPerson_password("235689");
//		personDAO.modifyPerson(person,13);
		//System.out.println(personDAO.getAllPerson());
		System.out.println(personDAO.getByPersonNum("1234567"));
	}

}
