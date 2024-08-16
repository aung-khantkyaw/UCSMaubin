package student_data;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession  session = request.getSession();
		String s = (String) session.getAttribute("id");
		int n=0;
		if(s == null || s.length()==0) {
			n=1;
		}else {
			n = Integer.parseInt(s);
		}

		session.setAttribute("id",String.valueOf(n+1));
		
		String stName = request.getParameter("stName");
		String rno = request.getParameter("rno");
		String gender = request.getParameter("gender");
		String bType = request.getParameter("bType");
		String bWeight = request.getParameter("bWeight");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		out.print("StudentID : UCS-" + n + "<br>");
		out.print("Name : " + stName + "<br>");
		out.print("Roll : " + rno + "<br>");
		out.print("Gender : " + gender + "<br>");
		out.print("Blood Type : " + bType + "<br>");
		out.print("Body Weight : " + bWeight + "<br>");
		out.print("Address : " + address + "<br>");
		out.print("Phone : " + phone + "<br>");
		out.print("</body></html>");
	}
}
