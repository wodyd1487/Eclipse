package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/researchNext")
public class researchNextCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String high_press = "non";
		String ear_preg = "non";
		String mid_preg = "non";
		String normal = "non";
		
		 high_press = request.getParameter("high_press");
		 ear_preg = request.getParameter("ear_preg");
		 mid_preg = request.getParameter("mid_preg");
		 normal = request.getParameter("normal");
		
			
			
			/*
			 * System.out.println(high_press); System.out.println(ear_preg);
			 * System.out.println(mid_preg); System.out.println(normal);
			 */
		
		if(high_press!=null) {
			response.sendRedirect("research2_bph.jsp");
		}
		else if(ear_preg!=null) {
			response.sendRedirect("finalpagefolder/result_preg_ear.jsp");
		}
		else if(mid_preg!=null) {
			response.sendRedirect("finalpagefolder/result_preg_mid.jsp");
		}
		else if(normal!=null) {
			response.sendRedirect("research2_no.jsp");
		}
		
		
		
	}

}
