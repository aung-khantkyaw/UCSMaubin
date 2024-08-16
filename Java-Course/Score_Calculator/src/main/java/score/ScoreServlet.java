package score;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.*;

@WebServlet("/ScoreServlet")
public class ScoreServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		String playername=request.getParameter("pname");
		double firstscore=Double.parseDouble(request.getParameter("fscore"));
		double secondscore=Double.parseDouble(request.getParameter("sscore"));
		double thirdscore=Double.parseDouble(request.getParameter("tscore"));
		String category=request.getParameter("category");
		double avgscore=(firstscore+secondscore+thirdscore)/3;
		
		ArrayList player=new ArrayList();
		player.add(playername);
		player.add(avgscore);
		player.add(category);
		
		ArrayList playerlist=(ArrayList) session.getAttribute("playerlists");
		if(playerlist==null)
			playerlist=new ArrayList();//carry session data
		playerlist.add(player);
		session.setAttribute("playerlists", playerlist);
		out.println("<h2>Score List</h2>");
		for(int i=0;i<playerlist.size();i++)
		{
			player=(ArrayList) playerlist.get(i);
			out.println("<li>"+player.get(0)+"["+player.get(1)+"]"+player.get(2)+"</li>");
		}
		out.println("<br>");
		out.println("<a href=\"index.html\">Add Form</body></html>");
		/*
		 * out.println("<br>");
		 * out.println("<a href=\"ViewReport\">View Report</body></html>");
		 */
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
