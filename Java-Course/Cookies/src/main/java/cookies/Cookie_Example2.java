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
 * Servlet implementation class Cookie_Example2
 */
@WebServlet("/Cookie_Example2")
public class Cookie_Example2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Cookie[] cook = request.getCookies();
		PrintWriter pw = response.getWriter();
		
		
		if(cook == null) {
			Cookie c = new Cookie("uName1","MgMg");
			response.addCookie(c);
			c = new Cookie("uName2", "KhinKhin");
			response.addCookie(c);
			c = new Cookie("uName3", "KyawKyaw");
			response.addCookie(c);
			pw.print("new user");
		}
		else {
			String str = "";
			str =" Cookie List : ";
			
			for (int i = 0; i < cook.length; i++) {
				Cookie c = cook[i];
				str += c.getName() + " : " + c.getValue() + "<br>";
			}
			pw.println("<body>"+ str +"</body>");
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
