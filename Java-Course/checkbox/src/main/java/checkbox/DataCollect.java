package checkbox;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DataCollect")
public class DataCollect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String g[] = request.getParameterValues("check");
		
		out.print("<html><body>");
		if(g == null)
			out.print("has no Like");
		else {
			out.print("likes : <ul>");
			for (int i = 0; i < g.length; i++) {
				out.print("<li>"+ g[i] +"</li>");
			}
			out.print("</ul>");
		}
	}


}
