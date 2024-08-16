package cookies;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieExample
 */
@WebServlet("/CookieExample")
public class CookieExample extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie cook[] = request.getCookies();
		String str = "";
		if(cook == null) {
			Cookie c = new Cookie("uName", "Mg Mg");
			c.setMaxAge(10);
			response.addCookie(c);
			str = "New User";
		}else {
			str = "old User";
		}
		
		PrintWriter pw = response.getWriter();
		pw.print("<body>"+ str +"</body>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
