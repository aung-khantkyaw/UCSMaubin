package book;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OSServlet
 */
@WebServlet("/OSServlet")
public class OSServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<h1 align=center></h1>");
		out.println("<form action=ProgramServlet method=get>");
		out.println("<table>"
				+ "    <tr><th>Book Name</th><th>Price</th></tr>"
				+ "    <tr><td><input type=checkbox name=osbook value=OSBook1>OSBook1</td>"
				+ "    <td>100</td>"
				+ "    </tr>"
				+ "    <tr><td><input type=checkbox name=osbook value=OSBook2>OSBook2</td>"
				+ "    <td>200</td>"
				+ "    </tr>"
				+ "    <tr><td><input type=checkbox name=osbook value=OSBook3>OSBook3</td>"
				+ "    <td>300</td>"
				+ "    </tr>"
				+ "    <tr><td colspan=2 align=center><input type=submit value=Add to card></td></tr>"
				+ "</table>");
		out.print("</form>");
	}
}
