package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		response.setCharacterEncoding("utf-8");
		String pre1 = request.getParameter("pre1");
		String pre2 = request.getParameter("pre2");
		
		System.out.println(pre1);
		System.out.println(pre2);
		//포워딩	
		request.setAttribute("pre1",pre1);
		request.setAttribute("pre2",pre2);
		//forward방식을 이용하여 페이지 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher("result_second.jsp");
		dispatcher.forward(request, response);
		//response.sendRedirect("result_second.jsp?newtri1="+ pre1+ "&newtri2="+pre2);
	
	}

}
