<%@page import="com.core.ChStr"%>
<%@page import="com.actionForm.ReaderTypeForm"%>
<%@page import="com.actionForm.ReaderForm"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>�޸Ķ���������Ϣ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/button.css" />
</head>

<body>
	<%
		ReaderTypeForm readerTypeForm = (ReaderTypeForm) request
				.getAttribute("readerTypeQueryif");
		ChStr chStr = new ChStr();
	%>
	<form name="form1" method="post"
		action="readerType?action=readerTypeModify">
		<input name="id" type="hidden" size="50" value="<%=readerTypeForm.getId()%>">
		<table border="0px" style="width:270px;height:120px;">
			<tr>
				<td width="35%">�������ƣ�</td>
				<td><input name="name" type="text"
					value="<%=readerTypeForm.getName()%>"></td>
			</tr>
			<tr>
				<td>�ɽ�������</td>
				<td><input name="number" type="text" size="13px"
					value="<%=readerTypeForm.getNumber()%>"> (��)</td>
			</tr>
			<tr>
			<tr>
				<td colspan="2" align="center"><input name="Submit"
					type="submit" id="blueButton" value="����">&nbsp;<input
					name="Submit2" type="reset" id="orangeButton" value="����">&nbsp;<input
					name="Submit3" type="button" id="redButton"
					onClick="window.close()" value="�ر�"></td>
			</tr>
		</table>
	</form>
</body>
</html>
