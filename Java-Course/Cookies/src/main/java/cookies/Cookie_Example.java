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
 * Servlet implementation class Cookie_Example
 */
@WebServlet("/Cookie_Example")
public class Cookie_Example extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean newUser = true;
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c: cookies) {
				if((c.getName().equals("name")) && (c.getValue().equals("Zun"))) {
					newUser = false;
					break;
				}
			}
		}
		String title = null;
		if(newUser) {
			Cookie c = new Cookie("name","Zun");
			c.setMaxAge(60*60*24*365);
			response.addCookie(c);
			title = "Welcome New User";
		}else {
			title ="Welcome Back";
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<h1>" + title + "</h2>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
