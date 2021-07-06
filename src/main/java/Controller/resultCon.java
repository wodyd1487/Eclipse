package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class resultCon
 */
@WebServlet("/resultCon")
public class resultCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String pre1 = request.getParameter("pre1");
		String pre2 = request.getParameter("pre2");
		
		System.out.println(pre1);
		System.out.println(pre2);
	}

}
