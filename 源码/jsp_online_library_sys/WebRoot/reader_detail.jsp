<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.dao.ReaderDAO"%>
<%@ page import="com.dao.ReaderTypeDAO"%>
<%@ page import="com.actionForm.ReaderForm"%>
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
	ReaderForm readerForm = (ReaderForm) request
			.getAttribute("readerDetail");
%><script language="jscript">
	
	
function check(form){
	if(form.name.value==""){
		alert("�������������!");form.name.focus();return false;
	}
	if(form.paperNO.value==""){
		alert("������֤������!");form.paperNO.focus();return false;
	}
}


</script>
<head>
<base href="<%=basePath%>">

<title>ͼ��ݹ���ϵͳ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
	#table1{
	margin: auto;
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
					<li><a href="index.jsp">���߹���</a></li>
					<li>></li>
					<li>���ߵ�������</li>
					<li>></li>
					<li>������ϸ��Ϣ</li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<table  width="100%" height="493" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td align="center" valign="top">
							<%
								int ID = 0;
								String name = readerForm.getName();
								String sex = readerForm.getSex();
								String barcode = readerForm.getBarcode();
								String vocation = readerForm.getVocation();
								String birthday = readerForm.getBirthday();
								String paperType = readerForm.getPaperType();
								String paperNO = readerForm.getPaperNO();
								String tel = readerForm.getTel();
								String email = readerForm.getEmail();
								String createDate = readerForm.getCreateDate();
								String remark = readerForm.getRemark();
								String operator = readerForm.getOperator();
								int typeid = readerForm.getTypeid();
								String typename = readerForm.getTypename();
							%>
							<table id="table1" width="600" height="432" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#FFFFFF">
								<tr>
									<td width="173" height="30" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;����</td>
									<td width="427" height="39"><input name="name" type="text"
										value="<%=name%>"></td>
								</tr>
								<tr>
									<td width="173" height="30" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
									<td height="35"><input name="name" type="text"
										value="<%=sex%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;��&nbsp;�룺</td>
									<td><input name="barcode" type="text" id="barcode"
										value="<%=barcode%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">�������ͣ�</td>
									<td><input name="vocation" type="text" id="vocation"
										value="<%=typename%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">ְ&nbsp;&nbsp;&nbsp;&nbsp;ҵ��</td>
									<td><input name="vocation" type="text" id="vocation"
										value="<%=vocation%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">�������ڣ�</td>
									<td><input name="birthday" type="text" id="birthday"
										value="<%=birthday%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">��Ч֤����</td>
									<td><input name="paperType" type="text"
										value="<%=paperType%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">֤�����룺</td>
									<td><input name="paperNO" type="text" id="paperNO"
										value="<%=paperNO%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">�Ǽ����ڣ�</td>
									<td><input name="paperNO2" type="text" id="paperNO2"
										value="<%=createDate%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;����</td>
									<td><input name="tel" type="text" id="tel"
										value="<%=tel%>"></td>
								</tr>
								<tr>
									<td height="30" align="center">Email��</td>
									<td><input name="email" type="text" id="email"
										value="<%=email%>" size="50"></td>
								</tr>
								<tr>
									<td height="30" align="center">��&nbsp;��&nbsp;Ա��</td>
									<td><input name="operator" type="text" id="operator"
										value="<%=operator%>"></td>
								</tr>
								<tr>
									<td align="center">��&nbsp;&nbsp;&nbsp;&nbsp;ע��</td>
									<td><textarea name="remark" cols="50" rows="5"
											class="wenbenkuang" id="remark"><%=remark%></textarea></td>
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
