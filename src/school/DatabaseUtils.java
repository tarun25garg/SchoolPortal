package school;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Student related database operations
 * @author Tarun Garg
 *
 */
public class DatabaseUtils {
		static Connection conn = null;
		static Statement stmt = null;
		static ResultSet rs = null; 
		
		public static User login(User user){
			 String username = user.getUsername();    
	         String password = user.getPassword();   
	         String query = "select * from users where username='" + username + "' AND password='" + password + "'";
			 try{
				 Connection conn = ConnectionUtils.getConnection();
				 Statement stmt = conn.createStatement();
				 //execute the query
				 rs = stmt.executeQuery(query);
				 boolean more = rs.next();
			       
		         // if user does not exist set the isValid variable to false
		         if (!more){
		            System.out.println("Sorry, you are not a registered user! Please sign up first");
		            user.setValid(false);
		         } 
			        
		         //if user exists set the isValid variable to true
		         else if (more){
		            user.setValid(true);
		         }
			    }
	         
			 catch (Exception ex){
				 ex.printStackTrace();
			         System.out.println("Log In failed: An Exception has occurred! " + ex);
			    } 
				    
			 //some exception handling
			 finally{
				 if(rs != null){
					 try{
						 rs.close();
			            } 
					 catch(Exception e){}
			     rs = null;
			    }
				
			      if(stmt != null){
			    	  try{
			    		  stmt.close();
			             } 
			    	  catch (Exception e) {}
			       stmt = null;
			      }
				
			       if(conn != null){
			    	   try{
			    		   conn.close();
			              }
			    	   catch (Exception e) {}
			        conn = null;
			       }
			      }
	         
	         return user;	
		}
		
		
		public static Student updateStudent(Student student) throws Exception{
			Long id = student.getId();
			String age = student.getStudentAge();
			String  studentClass = student.getStudentClass();
			String  name = student.getStudentName();
			String query = "update student set name='" + name + "' , class='" + studentClass + "' , age='" + age + "' where id=" + id;
			try{
				Connection conn = ConnectionUtils.getConnection();
				Statement stmt = conn.createStatement();
				System.out.println("Update student");
				//execute the query
				stmt.executeUpdate(query);
				System.out.println("student is updated");
			}
			catch(SQLException e){
				System.out.println(e.getMessage());
			}
			finally{
				if(stmt!= null){
					stmt.close();
				}
				if(conn!= null){
					conn.close();
				}
			}
			return student;
		}
		
		//@SuppressWarnings("unchecked")
		public static List<Student> searchStudents(Student student) throws Exception{
			List<Student> students = new ArrayList<Student>();
			
			//Long id = student.getId();
			String  name = student.getStudentName();
			String query = "select id, name, class, age from student  where name='" + name + "'";
			try{
				Connection conn = ConnectionUtils.getConnection();
				Statement stmt = conn.createStatement();
				System.out.println("Search student");
				//execute the query
				ResultSet rs = stmt.executeQuery(query);
				boolean found = rs.next();
				
				//if student is not found
				if (!found){
		            System.out.println("Sorry, Student is not found"); 
		            student.setValid(false);
		         } 
				//if student is found
				else if (found){
					System.out.println("student is searched");
					student.setValid(true);
					
					//Extract data from result set
					while(rs.next()){
						Student studentdata = new Student();
						studentdata.setStudentName(rs.getString("name"));
						studentdata.setStudentClass(rs.getString("class"));
						studentdata.setStudentAge(rs.getString("age"));
						//Retrieve by column name
				         Long Id = rs.getLong("Id");
				         String Age = rs.getString("age");
				         String Name = rs.getString("name");
				         String StudentClass = rs.getString("class");
				       //Display values
				         System.out.print("ID: " + Id);
				         System.out.print(", Age: " + Age);
				         System.out.print(", name: " + Name);
				         System.out.println(",Class: " + StudentClass);
				       //  ((List<Student>) student).add(student);
				         students.add(studentdata);
					}
				}
			}
			catch(SQLException e){
				System.out.println(e.getMessage());
			}
			finally{
				if(stmt!= null){
					stmt.close();
				}
				if(conn!= null){
					conn.close();
				}
			}
			return students;
		}
		
		public static Student createStudent(Student student) throws Exception{
			String age = student.getStudentAge();
			String  studentClass = student.getStudentClass();
			String  name = student.getStudentName();
			String query = "insert into student(name,class,age) values('"+ name+"','"+ studentClass+"','"+ age+"')";
			try{
				Connection conn = ConnectionUtils.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
				System.out.println("Insert student");
				//execute the query
				stmt.executeUpdate();
				System.out.println("student is inserted");
				
				try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
		            if (generatedKeys.next()) {
		            	student.setId(generatedKeys.getLong(1));
		            }
		            else {
		                throw new SQLException("Creating student failed, no ID obtained.");
		            }
		        }
			}
			catch(SQLException e){
				System.out.println(e.getMessage());
			}
			finally{
				if(stmt!= null){
					stmt.close();
				}
				if(conn!= null){
					conn.close();
				}
			}
			return student;
		}
		
		public static Object deleteStudent(Student student) throws Exception{
			Long id = student.getId();
			String age = student.getStudentAge();
			String  studentClass = student.getStudentClass();
			String  name = student.getStudentName();
			String query = "delete from student where id=" + id ;
			try{
				Connection conn = ConnectionUtils.getConnection();
				Statement stmt = conn.createStatement();
				System.out.println("Delete student");
				//execute the query
				stmt.executeUpdate(query);
				System.out.println("student is deleted");
			}
			catch(SQLException e){
				System.out.println(e.getMessage());
			}
			finally{
				if(stmt!= null){
					stmt.close();
				}
				if(conn!= null){
					conn.close();
				}
			}
			return student;		
		}
}
