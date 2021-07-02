package controller_command;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class JoinServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
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
				
				moveURL = "main.jsp";
				//forward방식을 이용하여 페이지 이동
//				RequestDispatcher dispatcher = request.getRequestDispatcher("join_success.jsp");
//				dispatcher.forward(request, response);
			}
			else {
//				response.sendRedirect("main.jsp");
				moveURL = "main.jsp";
			}
	
		return moveURL;
	}

}
