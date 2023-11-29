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

<title>ͼ�����ϵͳ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/button.css" />
<script language="javascript">
	function check(form) {
		if (form.name.value == "") {
			alert("���������Ա����!");
			form.name.focus();
			return;
		}
		if (form.pwd.value == "") {
			alert("���������Ա����!");
			form.pwd.focus();
			return;
		}
		if (form.pwd1.value == "") {
			alert("��ȷ�Ϲ���Ա����!");
			form.pwd1.focus();
			return;
		}
		if (form.pwd.value != form.pwd1.value) {
			alert("����������Ĺ���Ա���벻һ�£�����������!");
			form.pwd.focus();
			return;
		}
		form.submit();
	}
</script>
</head>

<body>
	<form name="form1" action="manager?action=managerAdd">
		<table border="0px" style="width:290px;height:120px;">
			<tr>
				<td width="200px" aling="center"><font size="3" color="blue">����Ա���ƣ�</font></td>
				<td><input name="name" type="text"></td>
			</tr>
			<tr>
				<td width="200px" aling="center"><font size="3" color="blue">����Ա���룺</font></td>
				<td><input name="pwd" type="password"></td>
			</tr>
			<tr>
				<td width="200px" aling="center"><font size="3" color="blue">ȷ��&nbsp���룺</font></td>
				<td><input name="pwd1" type="password"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input name="Button"
					type="button" id="blueButton" onClick="check(form1)" value="����">&nbsp;
					<input name="Submit2" type="button" id="redButton" value="�ر�"
					onClick="window.close();"></td>
			</tr>
		</table>
	</form>
</body>
</html>
