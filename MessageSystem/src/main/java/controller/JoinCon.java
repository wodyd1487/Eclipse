package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 전송이 post방식이라 인코딩 설정해줘야함
		request.setCharacterEncoding("EUC-KR");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
	
		MemberDAO dao = new MemberDAO();
		MemberDTO member = new MemberDTO(email, pw, tel, address);
		int rs = dao.join(member);
		
			if(rs > 0) {
				//request영역에 email정보를 저장
				request.setAttribute("email",email);
				//forward방식을 이용하여 페이지 이동
				RequestDispatcher dispatcher = request.getRequestDispatcher("join_success.jsp");
				dispatcher.forward(request, response);
			}
			else {
				response.sendRedirect("main.jsp");
			}
	}

}
