<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
<%@ page import="com.dao.BookDAO"%>
<%@ page import="com.actionForm.BookForm"%>
<%@ page import="java.util.*"%>
<%@ page import="com.core.ChStr"%>
<html>
<%
	Collection coll = (Collection) request.getAttribute("book");
	ChStr chStr = new ChStr();
%>
<head>
<title>ͼ��ݹ���ϵͳ</title>
<link href="CSS/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/button.css" />
<style>
#table1 {
	border: 0px solid red;
	width: 1050px;
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
	
}

a:visited {
	/* color: white */
	
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
					<li><a href="index.jsp">ͼ�����</a></li>
					<li>></li>
					<li>ͼ�鵵������</li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<%
					if (coll == null || coll.isEmpty()) {
				%>
				<table id="table1" border="0" cellspacing="" cellpadding="">
					<tr>
						<td align="center"><a href="reader_add.jsp"
							style="color:white;">
								<button type="button" id="orangeButton">���ͼ����Ϣ</button>
						</a></td>
					</tr>
					<tr>
						<td>���ϣ�û�ж����������������ͼ�鵵����</td>
					</tr>
				</table>
				<%
					} else {
						//ͨ��������ʽ��ʾ����
						Iterator it = coll.iterator();
						int ID = 0;
						String bookname = "";
						String barcode = "";
						String typename = "";
						String publishing = "";
						String bookcase = "";
						int storage = 0;
				%>
				<table id="table1" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="right"><a href="book_add.jsp" style="color:white;"><button
									type="button" id="orangeButton">���ͼ����Ϣ</a>
							</button></td>
					</tr>
					<tr>
						<td>
							<table id="table2" border="1px" cellspacing="0" cellpadding="0">
								<tr align="center" bgcolor="#e3F4F7">
									<th width="13%" bgcolor="#00a9da">������</th>
									<th width="26%" bgcolor="#00a9da">ͼ������</th>
									<th width="15%" bgcolor="#00a9da">ͼ������</th>
									<th width="14%" bgcolor="#00a9da">������</th>
									<th width="12%" bgcolor="#00a9da">���</th>
									<th width="14%" bgcolor="#00a9da">����</th>
								</tr>
								<%
									while (it.hasNext()) {
											BookForm bookForm = (BookForm) it.next();
											ID = bookForm.getId().intValue();
											bookname = bookForm.getBookName();
											barcode = chStr.nullToString(bookForm.getBarcode(),
													"&nbsp;");
											typename = bookForm.getTypeName();
											publishing = bookForm.getPublishing();
											bookcase = chStr.nullToString(bookForm.getBookcaseName(),
													"&nbsp;");
								%>
								<tr>

									<td style="padding:5px;"><%=barcode%></td>
									<td style="padding:5px; text-color:black;"><a
										href="book?action=bookDetail&ID=<%=ID%>"><%=bookname%></a></td>
									<td style="padding:5px;">&nbsp;<%=typename%></td>
									<td align="center">&nbsp;<%=publishing%></td>
									<td align="center">&nbsp;<%=bookcase%></td>
									<td align="center"><a
										href="book?action=bookModifyQuery&ID=<%=ID%>"><button
												type="button" id="blueButton">�޸�</button></a> &nbsp <a
										href="book?action=bookDel&ID=<%=ID%>"><button
												type="button" id="redButton">ɾ��</button></a></td>
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
