package profile;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AllDataServlet
 */
@WebServlet("/AllDataServlet")
public class AllDataServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		ArrayList <ArrayList> all = (ArrayList <ArrayList>)
		session.getAttribute("allperson");
		
		if(all != null) {
			out.println("<table align=center border=1>"
					+ "    <tr>"
					+ "        <th>User Name</th>"
					+ "        <th>Password</th>"
					+ "        <th>Gender</th>"
					+ "        <th>Country</th>"
					+ "        <th>About</th>"
					+ "        <th>Community</th>"
					+ "    </tr>");
			for(ArrayList p:all) {
				out.print("<tr>"
						+ "<td>"+ p.get(0) +"</td>"
						+ "<td>"+ p.get(1) +"</td>"
						+ "<td>"+ p.get(2) +"</td>"
						+ "<td>"+ p.get(3) +"</td>"
						+ "<td>"+ p.get(4) +"</td>"
						+ "<td>"+ p.get(5) +"</td>"
						+ "</tr>");
			}
			out.print("</table>");
			out.print("<a href=profile.html> New Profile</a>");
		}
	}


}
