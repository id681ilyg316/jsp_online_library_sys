<%@page import="com.actionForm.LibraryForm"%>
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
	LibraryForm libraryForm = (LibraryForm) request
			.getAttribute("libraryModifyif");
	String libraryname = "";
	String curator = "";
	String tel = "";
	String address = "";
	String email = "";
	String url = "";
	String createTime = "";
	String introduce = "";
%>
<head>
<base href="<%=basePath%>">

<title>My JSP 'library_modify.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript">
	function checkForm(form) {
		for (i = 0; i < form.length; i++) {
			if (form.elements[i].value == "") {
				alert("�뽫��Ϣ��д����!");
				form.elements[i].focus();
				return false;
			}
		}
	}
</script>
<style>
#table {
	border: 0px solid red;
	width: 500px;
	height: 400px;
	margin: auto;
	margin-top: 20px;
	background-color: wheat;
}
</style>
</head>
<script language="javascript">
	function checkForm(form) {
		for (i = 0; i < form.length; i++) {
			if (form.elements[i].value == "") {
				alert("�뽫��Ϣ��д����!");
				form.elements[i].focus();
				return false;
			}
		}
	}
</script>
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
					<li><a href="#">ͼ�����Ϣ</a></li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<form name="form1" method="post"
					action="library?action=libraryModify">
					<%
						if (libraryForm != null) {
							libraryname = libraryForm.getLibraryname();
							curator = libraryForm.getCurator();
							tel = libraryForm.getTel();
							address = libraryForm.getAddress();
							email = libraryForm.getEmail();
							url = libraryForm.getUrl();
							createTime = libraryForm.getCreateDate();
							introduce = libraryForm.getIntroduce();
						}
					%>
					<table id="table" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="200px">ͼ������ƣ�</td>
							<td width="" align="left"><input name="libraryname"
								type="text" id="libraryname" value="<%=libraryname%>" size="30"></td>
						</tr>
						<tr>
							<td>�ݳ���</td>
							<td align="left"><input name="curator" type="text"
								id="curator" size="30" value="<%=curator%>"></td>
						</tr>
						<tr>
							<td>��ϵ�绰��</td>
							<td align="left"><input name="tel" type="text" id="tel"
								size="30" value="<%=tel%>"></td>
						</tr>
						<tr>
							<td>��ϵ��ַ��</td>
							<td align="left"><input name="address" type="text"
								id="address" size="30" value="<%=address%>"></td>
						</tr>
						<tr>
							<td>��ϵ���䣺</td>
							<td align="left"><input name="email" type="text" id="email"
								size="30" value="<%=email%>"></td>
						</tr>
						<tr>
							<td>ͼ�����ַ��</td>
							<td align="left"><input name="url" type="text" id="url"
								size="30" value="<%=url%>"></td>
						</tr>
						<tr>
							<td>����ʱ�䣺</td>
							<td align="left"><input name="createDate" type="text"
								id="createDate" size="30" value="<%=createTime%>"></td>
						</tr>
						<tr>
							<td>ͼ��ݼ�飺</td>
							<td align="left"><textarea name="introduce" cols="50"
									rows="5" class="wenbenkuang" id="introduce"><%=introduce%></textarea></td>
						</tr>
						<tr>
							<td colspan="2" align="centers"><input name="Submit"
								type="submit" class="btn_grey" value="����"
								onClick="return checkForm(form1)">
								&nbsp;&nbsp;&nbsp;&nbsp; <input name="Submit2" type="reset"
								class="btn_grey" value="ȡ��"></td>
						</tr>
					</table>
				</form>
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
