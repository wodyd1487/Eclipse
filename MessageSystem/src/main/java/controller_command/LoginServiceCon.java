package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class LoginServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			String moveURL = null;
		  // 이메일, 비밀번호 저장
	      String email = request.getParameter("email");
	      String pw = request.getParameter("pw");

	      MemberDAO dao = new MemberDAO();
	      MemberDTO member = dao.loginCheck(email, pw);

	      // member 객체에 값 판단
	      if (member != null) { // member정보가 DB에 있다면

	         HttpSession session = request.getSession();
	         session.setAttribute("member", member);
	         moveURL = "main.jsp";
//	         System.out.println("로그인성공");
//	         response.sendRedirect("main.jsp");
	      } else {
//	         System.out.println("로그인실패");
//	         response.sendRedirect("main.jsp");
	    	  moveURL = "main.jsp";
	      }
		return moveURL;
	}

}
