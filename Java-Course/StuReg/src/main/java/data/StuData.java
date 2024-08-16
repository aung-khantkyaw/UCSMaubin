package data;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StuData")
public class StuData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String roll = request.getParameter("roll");
		String year = request.getParameter("year");
		String major = request.getParameter("major");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String town = request.getParameter("town");
		String subject[] = request.getParameterValues("subject");

				out.print("<html>"
						+ "<head>"
						+ "    <title>Student Profile</title>"
						+ "	   <link href=\"/StuReg/BOOTSTRAP/bootstrap.min.css\" rel=\"stylesheet\">"
						+ "</head>"
						+ "<body>"
						+ "    <div class=\"container\">"
						+ "        <h2>"
						+ name
						+ "'s Profile</h2>"
						+ "        <table class=\"table table-striped\">"
						+ "          <tbody>"
						+ "          <tr>"
						+ "            <td>Name</td>"
						+ "            <td>"
						+ name
						+ "			   </td>"
						+ "          </tr>"
						+ "          <tr>"
						+ "            <td>Roll No</td>"
						+ "            <td>"
						+ roll
						+ "			   </td>"
						+ "          </tr>"
						+ "          <tr>"
						+ "            <td>Year</td>"
						+ "            <td>"
						+ year 
						+ "			  year </td>"
						+ "          </tr>"
						+ "          <tr>"
						+ "            <td>Major</td>"
						+ "            <td>"
						+ major
						+ "			   </td>"
						+ "          </tr>"
						+ "          <tr>"
						+ "            <td>Email</td>"
						+ "            <td>"
						+ email
						+ "			   </td>"
						+ "          </tr>"
						+ "          <tr>"
						+ "            <td>Address</td>"
						+ "            <td>"
						+ address + ", " + town
						+ "			   </td>"
						+ "          </tr>"
						+ "          <tr>"
						+ "            <td>Subject</td>"
						+ "            <td>"
						+ "				<ol>");
				for (int i = 0; i < subject.length; i++) {
					out.print("<li>"+ subject[i] +"</li>");
				}
				out.print("				</ol>"
						+ "			   </td>"
						+ "          </tr>"
						+ "          </tbody>"
						+ "        </table>"
						+ "    </div>"
						+ "<script src=\"/StuReg/BOOTSTRAP/bootstrap.min.css\"></script>"
						+ "</body>"
						+ "</html>");
	}


}
