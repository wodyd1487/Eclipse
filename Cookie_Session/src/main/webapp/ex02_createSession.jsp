<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>���� ����</h1>
<%
	// ���ǿ� ������ ����
	// ������ ������ ����Ǳ� ������ ��Űó�� ����ڿ��� ������
	// ���� �ʿ䰡 ����
	// JSP������ ���尴ü�� ���
	// ������ ������ �� ObjectŸ������ ��ȯ�Ͽ� ����
	session.setAttribute("nick", "smart");

	//������ ��ȿ�Ⱓ ����(�ʴ���)
	// ������ ��ȿ�Ⱓ�� �⺻���� 30��
	session.setMaxInactiveInterval(60);
%>

</body>
</html>