package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MessageDAO;
import model.MessageDTO;

public class MessageServiceCon implements Command{
	String moveURL = null;
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String sendName = request.getParameter("sendName");
		String receiveEmail = request.getParameter("receiveEmail");
		String message = request.getParameter("message");
		
		System.out.println(sendName+receiveEmail+message);
		
		MessageDTO dto = new MessageDTO(sendName, receiveEmail, message);
		MessageDAO dao = new MessageDAO();
		int cnt = dao.insertMessage(dto);
		if(cnt > 0) {
			moveURL = "main.jsp";
			System.out.println("메시지 전송 성공");
//			response.sendRedirect("main.jsp");
		}
		else {
			moveURL = "main.jsp";
		System.out.println("메시지 전송 실패");
//		response.sendRedirect("main.jsp");
		}
		return null;
	}

	
}
