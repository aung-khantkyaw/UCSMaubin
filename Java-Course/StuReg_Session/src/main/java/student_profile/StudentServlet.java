package student_profile;
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
		HttpSession session=request.getSession();
		String s=(String) session.getAttribute("id");
		int n=0;
		if(s==null || s.length()==0)
			n=1;
		else
			n=Integer.parseInt(s);
		session.setAttribute("id",String.valueOf(n+1));
		
		String name=request.getParameter("txtName");
		String gender=request.getParameter("rdoGender");
		String nrc=request.getParameter("txtNrc");
		String fname=request.getParameter("txtFname");
		String addr=request.getParameter("txtArea");
		String phone=request.getParameter("txtPhone");		
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		out.println("StudentID: UCS- "+n+"<br/>");
		out.println("Name:   "+name+"<br/>");
		out.println("Gender: "+gender+"<br/>");
		out.println("NRC:    "+nrc+"<br/>");
		out.println("Father: "+fname+"<br/>");
		out.println("Address: "+addr+"<br/>");
		out.println("Phone:   "+phone+"<br/>");
		out.println("</body></html>");
	}
}
