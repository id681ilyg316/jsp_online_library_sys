<%@page import="com.actionForm.ReaderTypeForm"%>
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
	Collection coll = (Collection) request.getAttribute("readerType");
%>
<head>
<base href="<%=basePath%>">

<title>ͼ�����ϵͳ</title>

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
	color: black;
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
					<li><a href="index.jsp">���߹���</a></li>
					<li>></li>
					<li> �������͹���</li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<%
					if (coll == null || coll.isEmpty()) {
				%>
				<table id="table1" border="0" cellspacing="" cellpadding="">
					<tr>
						<td align="center">
							<button type="button" id="orangeButton">��Ӷ���������Ϣ
						</td>
					</tr>
					<tr>
						<td>���ϣ�û�ж���������������Ӷ������ͣ�</td>
					</tr>
				</table>
				<%
					} else {
						//ͨ��������ʽ��ʾ����
						Iterator it = coll.iterator();
						int ID = 0;
						String name = "";
						int number = 0;
				%>
				<table id="table1" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="right"><a
							onClick="window.open('readerType_add.jsp','','width=292,height=160,top=250,left=550')"><button
									type="button" id="orangeButton">��Ӷ���������Ϣ</a>
							</button></td>
					</tr>
					<tr>
						<td>
							<table id="table2" border="1px" cellspacing="0" cellpadding="0">
								<tr align="center" bgcolor="#e3F4F7">
									<th width="35%" bgcolor="#00a9da">������������</th>
									<th width="35%" bgcolor="#00a9da">�ɽ�����</th>
									<th width="30%" bgcolor="#00a9da">����</th>
								</tr>
								<%
									while (it.hasNext()) {
											ReaderTypeForm readerTypeForm = (ReaderTypeForm) it.next();
											ID = readerTypeForm.getId().intValue();
											name = readerTypeForm.getName();
											number = readerTypeForm.getNumber();
								%>
								<tr>
									<td style="text-align:center;">&nbsp;<%=name%></td>
									<td style="text-align:center;">&nbsp;<%=number%></td>
									<td align="center"><button type="button" id="blueButton">
											<a onClick="window.open('readerType?action=readerTypeModifyQuery&ID=<%=ID%>','','width=292,height=175,top=250,left=550')">�޸�</a>
										</button>&nbsp
										<button type="button" id="redButton">
											<a href="readerType?action=readerTypeDel&ID=<%=ID%>">ɾ��</a>
										</button></td>
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
