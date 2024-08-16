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
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("txtName");
		String password = request.getParameter("txtPassword");
		String gender = request.getParameter("rdoGender");
		String country = request.getParameter("country");
		String about= request.getParameter("txtAboutYou");
		String community= request.getParameter("community");
		
		ArrayList<String> person = new ArrayList<String>();
		person.add(name);
		person.add(password);
		person.add(gender);
		person.add(country);
		person.add(about);
		person.add(community);
		
		HttpSession session = request.getSession();
		ArrayList <ArrayList> allperson = (ArrayList <ArrayList>)
		session.getAttribute("allperson");
		
		if(allperson == null) {
			allperson = new ArrayList <ArrayList>();
			session.setAttribute("allperson", allperson);
		}
		
		allperson.add(person);
		
		out.println("<html><body align=center>"
				+ "User Name : " + name + "<br>"
				+ "Password : " + password + "<br>"
				+ "Gender : " + gender + "<br>"
				+ "Country : " + country + "<br>"
				+ "About : " + about + "<br>"
				+ "Community : " + community + "<br>"
						+ "</body></html>");
		out.println("<a href=profile.html>Next Create</a>");
	}

}
