<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.dao.BookDAO"%>
<%@ page import="com.dao.BookTypeDAO"%>
<%@ page import="com.actionForm.BookForm"%>
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
	BookForm bookForm = (BookForm) request.getAttribute("bookDetail");
%>
<head>
<base href="<%=basePath%>">

<title>ͼ��ݹ���ϵͳ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
#table1 {
	margin: auto;
	margin-top:20px;
	padding: 0px;
	background-color: wheat;
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
					<li>></li>
					<li>ͼ����ϸ��Ϣ</li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<table width="100%" height="493" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td align="center" valign="top">
							<%
								int ID = bookForm.getId().intValue();
								String bookname = bookForm.getBookName();
								String barcode = bookForm.getBarcode();
								if (barcode == null)
									barcode = "";
								String typename = bookForm.getTypeName();
								String author = bookForm.getAuthor();
								String translator = bookForm.getTranslator();
								String publishing = bookForm.getPublishing();
								Float price = bookForm.getPrice();
								int pages = bookForm.getPage();
								String bookcase = bookForm.getBookcaseName();

								String inTime = bookForm.getInTime();
								String operator = bookForm.getOperator();
							%>
							<table id="table1" width="600" height="432" border="0"
								cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
								<tr>
									<td width="173" height="30" align="center">��&nbsp;��&nbsp;�룺</td>
									<td height="35"><input name="name" type="text"
										value="<%=barcode%>" size="40"></td>
								</tr>
								<tr>
									<td width="173" height="30" align="center">ͼ�����ƣ�</td>
									<td width="427" height="39"><input name="name" type="text"
										value="<%=bookname%>" size="60"></td>
								</tr>
								<tr>
									<td height="30" align="center">ͼ�����ͣ�</td>
									<td><input name="vocation" type="text" id="vocation"
										value="<%=typename%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;�ߣ�</td>
									<td><input name="vocation" type="text" id="vocation"
										value="<%=author%>" size="50"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;�ߣ�</td>
									<td><input name="birthday" type="text" id="birthday"
										value="<%=translator%>" size="50"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;��&nbsp;�磺</td>
									<td><input name="paperType" type="text"
										value="<%=publishing%>" size="40"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
									<td><input name="paperNO" type="text" id="paperNO"
										value="<%=price%>"> (Ԫ)</td>
								</tr>
								<tr>
									<td height="30" align="center">ҳ&nbsp;&nbsp;&nbsp;&nbsp;�룺</td>
									<td><input name="paperNO2" type="text" id="paperNO2"
										value="<%=pages%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;�ܣ�</td>
									<td><input name="tel" type="text" id="tel"
										value="<%=bookcase%>"></td>
								</tr>

								<tr>
									<td height="30" align="center">���ʱ�䣺</td>
									<td><input name="email" type="text" id="email"
										value="<%=inTime%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;��&nbsp;Ա��</td>
									<td><input name="operator" type="text" id="operator"
										value="<%=operator%>"></td>
								</tr>
								<tr>
									<td align="center">&nbsp;</td>
									<td>&nbsp; <input name="Submit2" type="button"
										class="btn_grey" value="����" onClick="history.back()"></td>
								</tr>
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
