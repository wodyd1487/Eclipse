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

			// 로컬호스트 : oracle DB가 설치된 PC의 IP주소 설정
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "teacher";
			String pass = "hot";

			// 데이터베이스 연결
			conn = DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar 파일 또는 driver경로 확인!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결 실패..");
			e.printStackTrace();
		}

	}

	public void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (psmt != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int insertMessage(MessageDTO message) {

		int cnt = 0;

		try {
			connection();

			// 쿼리 실행
			String sql = "insert into message values(num_message.nextval,?,?,?,?,sysdate)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, message.getSendName());
			psmt.setString(2, message.getReceiveId());
			psmt.setString(3, message.getCategory());
			psmt.setString(4, message.getMessage());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} // end

		return cnt;
	}
	
	public ArrayList<MessageDTO> showMessage(String id) {

		ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();
		MessageDTO message = null;

		try {

			connection();

			// 쿼리 실행
			String sql = "select * from message where receiveId = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			// ☆☆☆☆☆
			// insert, update, delete : executeUpdate() --> DB에 내용을 변경할 때
			// select : executeQuery() --> DB에 내용을 검색할 때
			// cnt : 0 이면 실패 0 이상이면 성공
			rs = psmt.executeQuery();

			// 회원들의 정보 DTO에서 가져와서 ArrayList에 저장
			while (rs.next()) {
				int getNum = rs.getInt(1);
				String sendName = rs.getString(2);
				String receiveId = rs.getString(3);
				String category = rs.getString(4);
				String getMessage = rs.getString(5);
				String date = rs.getString(6);
				
				message = new MessageDTO(getNum, sendName, receiveId, category, getMessage, date);
				list.add(message);
				
			}
		} catch (SQLException e) {
			// DB관련 오류 발생시 실행되는 catch문
			e.printStackTrace();
		} finally {
			close();
		} // end

		return list;
	}
	
}
