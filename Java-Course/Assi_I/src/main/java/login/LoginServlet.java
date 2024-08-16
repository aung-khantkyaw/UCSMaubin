package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String User = request.getParameter("user");
		String Password = request.getParameter("pass");
		
		
		out.print("<html>"
				+ "<head>"
				+ "<title>Hello</title>"
				+ "</head>");
		
		if(User.equals("UcsMub") && Password.equals("UcsMub123")) {
			out.print("<body>"
					+ "<center>"
					+ "<h1>Success Login</h1>"
					+ "<h3>Welcome "
					+ User
					+ "</h3>"
					+ "</center>"
					+ "</body>"
					+ "</html>");
		}else {
			out.print("<body>"
					+ "<center>"
					+ "<h1>Log In FAIL!</h1>"
					+ "<h2>Try Again.</h2>"
					+ "</center>"
					+ "</body>"
					+ "</html>");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.html");
			dispatcher.include(request, response);
		}
	}

}
