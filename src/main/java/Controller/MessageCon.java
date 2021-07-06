package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MessageDAO;
import model.MessageDTO;

@WebServlet("/MessageCon")
public class MessageCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("euc-kr");
		
		String sendName = request.getParameter("sendName");
		String receiveId = request.getParameter("receiveId");
		String category = request.getParameter("category");
		String message = request.getParameter("message");
		
		
		MessageDTO dto = new MessageDTO(sendName, receiveId, category, message);
		
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.insertMessage(dto);
		
		if(cnt > 0) {
			System.out.println("메세지 전송 성공");
			response.sendRedirect("q&n.jsp");
		}else {
			System.out.println("메세지 전송 실패");
			response.sendRedirect("q&n.jsp");
		}
		
		
	}

}
