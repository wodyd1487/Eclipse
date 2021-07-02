package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;

/**
 * Servlet implementation class DeleteCon
 */
@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		MemberDAO dao = new MemberDAO();
		//��� �����ƴ��� ������ ��ȯ
		int cnt = dao.delete(email);
		
		if(cnt>0) {
			System.out.println("ȸ�� ���� ����");
			response.sendRedirect("select.jsp");
		}
		else {
			System.out.println("ȸ������ ����");
			response.sendRedirect("select.jsp");
		}
	}

}
