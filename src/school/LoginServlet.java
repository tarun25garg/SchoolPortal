package school;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description = "Servlet For Login", urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{	    
			User user = new User();
		    user.setUserName(request.getParameter("email"));
		    user.setPassword(request.getParameter("password"));

		     user = DatabaseUtils.login(user);
			   		    
		     if(user.isValid()){  
		    	 HttpSession session = request.getSession(true);	    
		         session.setAttribute("currentSessionUser",user); 
		         response.sendRedirect("Student.jsp"); //logged-in page     		
		     }
			        
		     else 
		         response.sendRedirect("invalidlogin.jsp"); //error page
		   } 
				
		catch (Throwable theException){
			System.out.println(theException); 
		}
	}

}
