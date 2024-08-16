package data;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormData")
public class FormData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String year = request.getParameter("year");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		if(gender.equals("Male")) {
			out.print("Mg " + name + " <br>");
		}else {
			out.print("Ma " + name + " <br>");
		}
		out.print(year);
		out.print("</body></html>");
	}

}
