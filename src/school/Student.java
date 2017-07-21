package school;

import java.io.Serializable;

/**
 * Student Class
 * @author Tarun Garg
 *
 */
public class Student implements Serializable{
	
	private static final long serialVersionUID = -9059030882949802303L;
	
	private Long id;
	private String studentName;
	private String studentClass;
	private String studentAge;
	public boolean valid;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentClass() {
		return studentClass;
	}
	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}
	public String getStudentAge() {
		return studentAge;
	}
	public void setStudentAge(String studentAge) {
		this.studentAge = studentAge;
	}
	
	public boolean isValid() {
        return valid;
	 }
	
    public void setValid(boolean Valid) {
        this.valid = Valid;
	 }

}
