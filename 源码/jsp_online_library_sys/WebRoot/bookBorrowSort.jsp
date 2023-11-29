<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.dao.BorrowDAO"%>
<%@ page import="com.actionForm.BorrowForm"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
	Collection coll = (Collection) request
			.getAttribute("bookBorrowSort");
%>
<head>
<base href="<%=basePath%>">

<title>ͼ��ݹ���ϵͳ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

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
					<li><a href="index.jsp">ͼ��������а�</a></li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<%
					if (coll == null || coll.isEmpty()) {
				%>
				<table width="100%" height="30" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="36" align="center">����ͼ�������Ϣ��</td>
					</tr>
				</table>
				<%
					} else {
						//ͨ��������ʽ��ʾ����
						Iterator it = coll.iterator();
						int degree = 0;
						String bookname = "";
						String typename = "";
						String barcode_book = "";
						String bookcase = "";
						String pub = "";
						String author = "";
						String translator = "";
						Float price = new Float(0);
				%>
				<table width="98%" border="1" cellpadding="0" cellspacing="0"
					bordercolor="#FFFFFF" bordercolordark="#F6B83B"
					bordercolorlight="#FFFFFF">
					<tr align="center" bgcolor="#00a9da">
						<td width="8%" bgcolor="#00a9da">���Ĵ���</td>
						<td width="11%" bgcolor="#00a9da">ͼ��������</td>
						<td width="17%" bgcolor="#00a9da">ͼ������</td>
						<td width="15%" bgcolor="#00a9da">ͼ������</td>
						<td width="16%" bgcolor="#00a9da">���</td>
						<td width="14%" bgcolor="#00a9da">������</td>
						<td width="11%" bgcolor="#00a9da">����</td>
						<td colspan="2" bgcolor="#00a9da">����(Ԫ)</td>
					</tr>
					<%
						while (it.hasNext()) {
								BorrowForm borrowForm = (BorrowForm) it.next();
								bookname = borrowForm.getBookName();
								barcode_book = borrowForm.getBookBarcode();
								typename = borrowForm.getBookType();
								degree = borrowForm.getDegree();
								bookcase = borrowForm.getBookcaseName();
								pub = borrowForm.getPubName();
								author = borrowForm.getAuthor();
								price = borrowForm.getPrice();
					%>
					<tr>
						<td align="center">&nbsp;<%=degree%></td>
						<td style="padding:5px;">&nbsp;<%=barcode_book%></td>
						<td style="padding:5px;"><%=bookname%></td>
						<td style="padding:5px;"><%=typename%></td>
						<td align="center">&nbsp;<%=bookcase%></td>
						<td align="center">&nbsp;<%=pub%></td>
						<td width="11%" align="center"><%=author%></td>
						<td width="8%" align="center"><%=price%></td>
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
