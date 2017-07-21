package school;

import java.util.List;

/**
 * This class is for testing student methods
 * @author Tarun
 *
 */
public class TestStudentMethods {
	
	public static void main(String[] args) throws Exception {
		Student student = new Student();
		
		student.setStudentName("vipin");
		student.setStudentAge("10");
		student.setStudentClass("xth");
		//Going to save the student
		student = DatabaseUtils.createStudent(student);
		//Now the student is created
		
		//Going to update the student
		student.setStudentName("vindal");
		student.setStudentClass("ixth");
		student.setStudentAge("9");
		student.setId((long) 8);
		DatabaseUtils.updateStudent(student);
		
		//Now going to search student by name vindal
		student.setStudentName("vipin");
		List<Student> results = DatabaseUtils.searchStudents(student);
		//Results size should be equal to 1
		System.out.println("search list size is : " + results.size());
		
		//Now going to delete student
		student.setId((long) 7);
		DatabaseUtils.deleteStudent(student);
		//Now vindal name student has been deleted
		
		//Now going to search student by name vindal
		student.setStudentName("vindal");
		List<Student> results1 = DatabaseUtils.searchStudents(student);
		//Results size should be equal to 0
		System.out.println("search list size is : " + results1.size());
	}

}
