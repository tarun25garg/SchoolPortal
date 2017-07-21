package school;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * This class is used to create connections to the database
 * @author Tarun Garg
 *
 */
public class ConnectionUtils {
	
	//JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/school";
	
	//Database credentials
   static final String USER = "root";
   static final String PASS = "root";
   
   public static Connection getConnection() throws Exception{
	   Connection conn = null;
	   //STEP 2: Register JDBC driver
	   try{
		   Class.forName("com.mysql.jdbc.Driver");
	   }
	   catch(ClassNotFoundException e){
		   System.out.println(e.getMessage());
	   }
       //STEP 3: Open a connection
       System.out.println("Connecting to database...");
       try{
    	   conn = DriverManager.getConnection(DB_URL,USER,PASS);
       }
       catch(SQLException e){
    	   System.out.println(e.getMessage());
       }
       return conn;
   }
}
	
    