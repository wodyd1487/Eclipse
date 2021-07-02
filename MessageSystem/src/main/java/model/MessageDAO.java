package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MessageDAO {
	   private Connection conn = null;
	   private PreparedStatement psmt = null;
	   private ResultSet rs = null;
	   public void connection() {
		   try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		       String url = "jdbc:oracle:thin:@localhost:1521:xe";
		       String user = "hr";
		       String pass = "hr";

		       conn = DriverManager.getConnection(url, user, pass);
		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar파일 또는 driver경로 확인!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결 실패");
			e.printStackTrace();
		}


	   }
	   public void close() {
	       // 무조건 실행하는 구문
	       // 데이터베이스 종료기능 구현
	       try {
	    	  if(rs != null) {rs.close();}
	          if(psmt != null) {psmt.close();}
	          if(conn != null) {conn.close();}
	       } catch(SQLException e) {e.printStackTrace();}  
	   }
	   public int insertMessage(MessageDTO message) {
		      
		      int cnt = 0;
		      
		      try {
		         // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
		    	 connection();
		         String sql = "insert into web_message values(num_message.nextval,?,?,?,sysdate)";
		         
		         psmt = conn.prepareStatement(sql);
		         
		         psmt.setString(1, message.getSendName());
		         psmt.setString(2, message.getReceiveEmail());
		         psmt.setString(3, message.getMessage());

		         cnt = psmt.executeUpdate();

		         

		      } catch (SQLException e) {
		         System.out.println("sql문 오류다!");
		         e.printStackTrace();
		      }finally {
		         // 무조건 실행하는 구문
		         // 데이터베이스 종료기능 구현
		    	  close();
		      		}//end
		      
		      return cnt;
		}
	   public  ArrayList<MessageDTO> showMessage(String email) {
			
		    ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
		    MessageDTO message = null;
		    
		    try {
		       
		       // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
		       connection();

		       String sql = "select * from web_message where receiveEmail =?";
		       
		       psmt = conn.prepareStatement(sql);
		       psmt.setString(1, email);
		       rs = psmt.executeQuery();
		     	       
		       while (rs.next()) {
		          
		          // 칼럼 인덱스는 1부터 시작
		          int getNum = rs.getInt(1);
		          String sendName = rs.getString(2);
		          String receiveEmail = rs.getString(3);
		          String getMessage = rs.getString(4);
		          String date = rs.getString(5);
		       

		          message = new MessageDTO(getNum, sendName, receiveEmail, getMessage, date);
		          list.add(message);	
		       }
		    }catch (SQLException e) {
		       System.out.println("sql문 오류다!");
		       e.printStackTrace();
		    }finally {
		       close();
		    }// end
		    
		    return list;
		    
		 }
}


