1. ȸ�������� ������ ������ �� �ִ� 'web_member'���̺��� ����ÿ�.
   �÷��� : m_email / m_pw / m_tel / m_address

select * from web_members


-- �޽��� ��ȣ(������), ������ ���, �޴� ���, �޼��� ����, �޼��� �����ð�(�ý��۽ð�) --
create table web_message(
	num number(10),
	sendName varchar2(100),
	receiveEmail varchar2(100),
	message varchar2(500),
	m_date date
)
create sequence num_message
increment by 1
start with 1
minvalue 1
maxvalue 100
nocycle;



