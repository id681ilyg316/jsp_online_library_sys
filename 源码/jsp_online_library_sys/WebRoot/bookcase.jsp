<%@page import="com.actionForm.BookCaseForm"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
	Collection coll = (Collection) request.getAttribute("bookcase");
%>
<head>
<base href="<%=basePath%>">

<title>ͼ��ݹ���ϵͳ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/button.css" />
<style>

#table1 {
	border: 0px solid red;
	width: 500px;
	margin: auto;
	margin-top: 20px;
	padding: 0px;

}

#table1 td {
	padding: 0px;
}

#table2 {
	border: 0px solid #0099cc;
	width: 100%;
	/* box-shadow: 10px 10px 5px #888888; */
}

#table2 th {
	color: white;
	text-align: center;
	background-color: #0099cc;
}

#table2 td {
	padding: 2px;
	color:black;
}

a:link {
	color: white;
}

a:visited {
	color: white
}
</style>
</head>

<body>
	<div class="top"></div>
	<jsp:include page="header.jsp" />
	<div id="content">
		<div id="left">
			<jsp:include page="left_menu.jsp" />
		</div>
		<div id="right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png"></li>
					<li style="margin-left: 25px;">����ǰ��λ�ã�</li>
					<li><a href="#">ϵͳ����</a></li>
					<li>></li>
					<li><a href="#"> �������</a></li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<%
					if (coll == null || coll.isEmpty()) {
				%>
				<table id="table1" border="0" cellspacing="" cellpadding="">
					<tr>
						<td align="center">
							<button type="button" id="orangeButton">������
							
						</td>
					</tr>
					<tr>
						<td>���������Ϣ����������</td>
					</tr>
				</table>
				<%
					} else {
						//ͨ��������ʽ��ʾ����
						Iterator it = coll.iterator();
						int ID = 0;
						String name = "";
				%>
				<table id="table1" border="0" cellspacing="" cellpadding="">
					<tr>
						<td align="right"><a
							onClick="window.open('bookcase_add.jsp','','width=292,height=160,top=250,left=550')"><button
									type="button" id="orangeButton">��������Ϣ</a>
							</button></td>
					</tr>
					<tr>
						<td>
							<table id="table2" border="1" cellspacing="0" cellpadding="0">
								<tr>
									<th width="60%" align="center">�������</th>
									<th>����</th>
									</td>
								</tr>
								<%
									while (it.hasNext()) {
											BookCaseForm bookCaseForm = (BookCaseForm) it.next();
											ID = bookCaseForm.getId().intValue();
											name = bookCaseForm.getName();
								%>
								<tr>
									<td><%=name%></td>
									<td align="center">
										<button type="button" id="blueButton">
											<a
												onClick="window.open('bookCase?action=bookCaseModifyQuery&ID=<%=ID%>','','width=292,height=175,top=250,left=550')">�޸�</a></a>
										</button>
										<button type="button" id="redButton">
											<a href="bookCase?action=bookCaseDel&ID=<%=ID%>">ɾ��</a>
										</button>
									</td>
								</tr>
								<%
									}
									}
								%>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="bottom"></div>
	<jsp:include page="footer.jsp" />
	<script>
		navList(12);
	</script>
</body>
</html>
