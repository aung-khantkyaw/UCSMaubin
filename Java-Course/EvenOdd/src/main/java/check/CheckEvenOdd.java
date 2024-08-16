package check;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckEvenOdd")
public class CheckEvenOdd extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		String num = req.getParameter("num");
		int check = Integer.valueOf(num);
		
		if(check%2 == 0) {
			out.print("<center><h1>" + check + " is Even</h1></center>");
		}else {
			out.print("<center><h1>" + check + " is Odd</h1></center>");
		}
	}


}
