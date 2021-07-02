package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class MemberDAO {

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
   // class file이기에 email, pw 매개변수를 따로 적어줘야함
   public MemberDTO loginCheck(String email, String pw) {
      
      MemberDTO member = null;
      
      try {
         
         // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
         Class.forName("oracle.jdbc.driver.OracleDriver");

         String url = "jdbc:oracle:thin:@localhost:1521:xe";
         String user = "hr";
         String pass = "hr";

         conn = DriverManager.getConnection(url, user, pass);

         String sql = "select * from web_members where email =? and pw=?";
         
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, email);
         psmt.setString(2, pw);

         rs = psmt.executeQuery();

         
         if (rs.next()) {
            
            // 칼럼 인덱스는 1부터 시작
            String getEmail = rs.getString(1);
            String getTel = rs.getString(3);
            String getAddress = rs.getString(4);
         
            member = new MemberDTO(getEmail, null, getTel, getAddress);
            
         }
            

      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         System.out.println("sql문 오류다!");
         e.printStackTrace();
      }finally {
         // 무조건 실행하는 구문
         // 데이터베이스 종료기능 구현
         
         try {
            
            if(psmt != null) {
               psmt.close();
            }
            if(conn != null) {
               conn.close();
            }
            
         } catch(SQLException e) {e.printStackTrace();}
      }// end
      
      return member;
      
   }
   
   public int join(MemberDTO member) {
      
      int cnt = 0;
      
      try {
         // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
    	 connection();
         String sql = "insert into web_members values(?,?,?,?)";
         
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, member.getEmail());
         psmt.setString(2, member.getPw());
         psmt.setString(3, member.getTel());
         psmt.setString(4, member.getAddress());

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
   


public int update(MemberDTO member) {


    
    int cnt = 0;
    
    try {
       // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
    	connection();

       String sql = "update web_members set pw=?, tel=?, address=? where email=?";
       
       psmt = conn.prepareStatement(sql);
       
      
       psmt.setString(1, member.getPw());
       psmt.setString(2, member.getTel());
       psmt.setString(3, member.getAddress());
       psmt.setString(4, member.getEmail());

       cnt = psmt.executeUpdate();

       

    }
    catch (SQLException e) {
       System.out.println("sql문 오류다!");
       e.printStackTrace();
    }finally {
       // 무조건 실행하는 구문
       // 데이터베이스 종료기능 구현
    close();
    }//end
    
    return cnt;


    
}
public  ArrayList<MemberDTO> select() {
	
    ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
    MemberDTO member = null;
    
    try {
       
       // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
       connection();

       String sql = "select * from web_members";
       
       psmt = conn.prepareStatement(sql);

       rs = psmt.executeQuery();

       
       while (rs.next()) {
          
          // 칼럼 인덱스는 1부터 시작
          String getEmail = rs.getString(1);
          String getTel = rs.getString(3);
          String getAddress = rs.getString(4);
       
          member = new MemberDTO(getEmail, null, getTel, getAddress);
          list.add(member);
       }
    }catch (SQLException e) {
       System.out.println("sql문 오류다!");
       e.printStackTrace();
    }finally {
       close();
    }// end
    
    return list;
    
 }
public int delete(String email) {


    
    int cnt = 0;
    
    try {
       // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
    	connection();

       String sql = "delete from web_members where email = ?";
       
       psmt = conn.prepareStatement(sql);
       psmt.setString(1, email);

       cnt = psmt.executeUpdate();
    }
    catch (SQLException e) {
       System.out.println("sql문 오류다!");
       e.printStackTrace();
    }finally {
       // 무조건 실행하는 구문
       // 데이터베이스 종료기능 구현
    close();
    }//end
    
    return cnt;


    
}
public boolean idCheck(String email) {
    
   Boolean check = false;
    try {
       
       // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
       Class.forName("oracle.jdbc.driver.OracleDriver");

       String url = "jdbc:oracle:thin:@localhost:1521:xe";
       String user = "hr";
       String pass = "hr";

       conn = DriverManager.getConnection(url, user, pass);

       String sql = "select * from web_members where email =? ";
       
       psmt = conn.prepareStatement(sql);
       
       psmt.setString(1, email);
     
       rs = psmt.executeQuery();

       
       if (rs.next()) {
    	   check = true;
       }
       else {check = false;}
          

    } catch (ClassNotFoundException e) {
       e.printStackTrace();
    } catch (SQLException e) {
       System.out.println("sql문 오류다!");
       e.printStackTrace();
    }finally {
       // 무조건 실행하는 구문
       // 데이터베이스 종료기능 구현
       
       try {
          
          if(psmt != null) {
             psmt.close();
          }
          if(conn != null) {
             conn.close();
          }
          
       } catch(SQLException e) {e.printStackTrace();}
    }// end
    
    return check;
    
 }
}