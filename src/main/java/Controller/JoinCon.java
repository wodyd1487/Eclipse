package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");

		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(id, pw, name, nick, age, gender, tel, birth);
		int cnt = dao.join(dto);

		if (cnt > 0) { // select한 데이터가 있다면
			// request 영역에 email 정보를 저장
			request.setAttribute("id", id);

			// forward 방식
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
			// response.sendRedirect("join_success.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}

}
