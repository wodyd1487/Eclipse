package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      // �̸���, ��й�ȣ ����
      String email = request.getParameter("email");
      String pw = request.getParameter("pw");

      MemberDAO dao = new MemberDAO();
      MemberDTO member = dao.loginCheck(email, pw);

      // member ��ü�� �� �Ǵ�
      if (member != null) { // member������ DB�� �ִٸ�

         HttpSession session = request.getSession();
         session.setAttribute("member", member);

         System.out.println("�α��μ���");
         response.sendRedirect("main.jsp");
      } else {
         System.out.println("�α��ν���");
         response.sendRedirect("main.jsp");
      }

   }

}