package profile;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String Roll = req.getParameter("roll");
		String Name = req.getParameter("name");
		String Major = req.getParameter("major");
		String Email = req.getParameter("email");
		String Phone = req.getParameter("phone");
		
		if(Roll.equals("") || Name.equals("") || Major.equals("") || Email.equals("") || Phone.equals("")) {
			out.print("<html>"
					+ "<head>"
					+ "		<title>Student Profile</title>"
					+ "</head>"
					+ "<body>"
					+ "<center>"
					+ "<h2>Infomation is not Enough!!!!</h2>"
					+ "<h3><a href=\"/Assi_II/index.html\">Go Back & Fill<a></h3>"
					+ "</center>"
					+ "</body>"
					+ "</html>");
		}else {
			out.print("<html>"
					+ "<head>"
					+ "    <title>Student Profile</title>"
					+ "    <style>"
					+ "        body{"
					+ "            display: flex;"
					+ "            align-items: center;"
					+ "            justify-content: center;"
					+ "            min-height: 100vh;"
					+ "        }"
					+ "        .container{"
					+ "            width: 1000px;"
					+ "        }"
					+ "        h2{"
					+ "            text-align: center;"
					+ "        }"
					+ "        table{"
					+ "            width: 700px;"
					+ "			   margin: 0 auto;"
					+ "			   font: 1.2rem monospace;"
					+ "        }"
					+ "        tr{"
					+ "           height: 2rem;"
					+ "        }"
					+ "        .label{"
					+ "            width: 30%;"
					+ "        }"
					+ "    </style>"
					+ "</head>"
					+ "<body>"
					+ "    <div class=\"container\">"
					+ "        <h2>"
					+ Name
					+ "'s Profile</h2>"
					+ "        <table>"
					+ "            <tr>"
					+ "                <td class=\"label\">Roll No</td>"
					+ "                <td>: "
					+ Roll
					+ "					</td>"
					+ "            </tr>"
					+ "            <tr>"
					+ "                <td class=\"label\">Name  </td>"
					+ "                <td>: "
					+ Name
					+ "					</td>"
					+ "            </tr>"
					+ "            <tr>"
					+ "                <td class=\"label\">Major</td>"
					+ "                <td>: "
					+ Major
					+ "					</td>"
					+ "            </tr>"
					+ "            <tr>"
					+ "                <td class=\"label\">E-mail</td>"
					+ "                <td>: "
					+ Email
					+ "					</td>"
					+ "            </tr>"
					+ "            <tr>"
					+ "                <td class=\"label\">Phone</td>"
					+ "                <td>: "
					+ Phone
					+ "					</td>"
					+ "            </tr>"
					+ "        </table>"
					+ "    </div>"
					+ "</body>"
					+ "</html>");
		}
	}
}
