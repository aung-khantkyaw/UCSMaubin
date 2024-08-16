package multiple;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Multiply")
public class Multiply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int num = Integer.valueOf(request.getParameter("num"));
		
		for (int i = 1; i <= 12; i++) {
			out.print("<table border=1>"
					+ "<tr>"
					+ "<td>"
					+ num + "*" + i
					+ "</td>"
					+ "<td>"
					+ num * i
					+ "</td>"
					+ "</tr>"
					+ "</table>");
		}
	}

}
