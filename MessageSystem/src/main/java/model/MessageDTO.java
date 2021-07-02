package model;

public class MessageDTO {
// 메시지번호, 보내는사람, 받는사람, 메세지내용, 보낸날짜
	
	private int num;
	private String sendName;
	private String receiveEmail;
	private String message;
	private String m_date;
	public MessageDTO(int num, String sendName, String receiveEmail, String message, String m_date) {
		super();
		this.num = num;
		this.sendName = sendName;
		this.receiveEmail = receiveEmail;
		this.message = message;
		this.m_date = m_date;
	}
	public MessageDTO(String sendName, String receiveEmail, String message) {
		super();
		this.sendName = sendName;
		this.receiveEmail = receiveEmail;
		this.message = message;
	}
	public int getNum() {
		return num;
	}
	public String getSendName() {
		return sendName;
	}
	public String getReceiveEmail() {
		return receiveEmail;
	}
	public String getMessage() {
		return message;
	}
	public String getM_date() {
		return m_date;
	}

}
