package school;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchStudentServlet
 */
@WebServlet(description = "servlet for searching student", urlPatterns = { "/SearchStudentServlet" })
public class SearchStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchStudentServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try{
			Student student = new Student();
			student.setStudentName(request.getParameter("name"));
			
			List<Student> students = DatabaseUtils.searchStudents(student);
			request.getSession().setAttribute("studentList", students);
			if(student.isValid()){
				response.sendRedirect("SearchResult.jsp");
			}
			else
				response.sendRedirect("invalidlogin.jsp");
		   }
		catch (Throwable theException){
			System.out.println(theException); 
		}
		
	}

}
