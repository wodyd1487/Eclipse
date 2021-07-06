package model;

public class MessageDTO {
// 메세지번호, 보내는사람, 받는 사람, 메세지 내용, 보낸 날짜
	
	private int num;
	private String sendName;
	private String receiveId;
	private String category;
	private String message;
	private String m_date;
	
	
	public MessageDTO(int num, String sendName, String receiveId, String category, String message, String m_date) {
		super();
		this.num = num;
		this.sendName = sendName;
		this.receiveId = receiveId;
		this.category = category;
		this.message = message;
		this.m_date = m_date;
	}



	public MessageDTO(String sendName, String receiveId, String category, String message) {
		super();
		this.sendName = sendName;
		this.receiveId = receiveId;
		this.category = category;
		this.message = message;
	}



	public int getNum() {
		return num;
	}

	public String getSendName() {
		return sendName;
	}

	public String getReceiveId() {
		return receiveId;
	}

	public String getCategory() {
		return category;
	}

	public String getMessage() {
		return message;
	}

	public String getM_date() {
		return m_date;
	}


	
	
	
}
