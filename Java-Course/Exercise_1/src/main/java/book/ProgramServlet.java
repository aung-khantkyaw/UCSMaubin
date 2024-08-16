package book;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProgramServlet
 */
@WebServlet("/ProgramServlet")
public class ProgramServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	
	HttpSession session = request.getSession();
	String osbooks[] = request.getParameterValues("osbook");
	HashMap<String, Integer> oshashmap = new HashMap<String, Integer>();
	
	if(osbooks != null) {
		for(String os: osbooks) {
			if(os.trim().equals("OSBook1")) oshashmap.put("OSBook1", 100);
			if(os.trim().equals("OSBook2")) oshashmap.put("OSBook2", 200);
			if(os.trim().equals("OSBook3")) oshashmap.put("OSBook3", 300);
		}
		
		session.setAttribute("osbook", oshashmap);
	}
	}
}
