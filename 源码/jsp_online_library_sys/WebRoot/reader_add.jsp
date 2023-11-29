<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.dao.ReaderDAO"%>
<%@ page import="com.dao.ReaderTypeDAO"%>
<%@ page import="com.actionForm.ReaderForm"%>
<%@ page import="com.actionForm.ReaderTypeForm"%>
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
	String str = null;
	ReaderTypeDAO readerTypeDAO = new ReaderTypeDAO();
	Collection coll = (Collection) readerTypeDAO.query(str);
	if (coll == null || coll.isEmpty()) {
		out.println("<script>alert('����¼�����������Ϣ!');history.back(-1);</script>");
	} else {
		Iterator it = coll.iterator();
		int ID = 0;
		String name = "";
%>
<script language="jscript">
	
	
function check(form){
	if(form.name.value==""){
		alert("�������������!");form.name.focus();return false;
	}
	if(form.barcode.value==""){
		alert("������������!");form.barcode.focus();return false;
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
#table1 {
	width: 600px;
	height: 432px;
	margin: auto;
	margin-top: 20px;
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
					<li>���Ӷ�����Ϣ</li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<form name="form1" action="reader?action=readerAdd">
					<table id="table1" border="0" cellpadding="0" cellspacing="0"
						bgcolor="#FFFFFF">
						<tr>
							<td width="173" align="center">������</td>
							<td width="427" height="39"><input name="name" type="text">
								*</td>
						</tr>
						<tr>
							<td width="173" align="center">�Ա�</td>
							<td height="35"><input name="sex" type="radio"
								class="noborder" id="radiobutton" value="��" checked> <label
								for="radiobutton">�� </label> <label> <input name="sex"
									type="radio" class="noborder" value="Ů"> Ů
							</label></td>
						</tr>
						<tr>
							<td align="center">�����룺</td>
							<td><input name="barcode" type="text" id="barcode">
								*</td>
						</tr>
						<tr>
							<td align="center">�������ͣ�</td>
							<td><select name="typeid" class="wenbenkuang" id="typeid">
									<%
										while (it.hasNext()) {
												ReaderTypeForm readerTypeForm = (ReaderTypeForm) it.next();
												ID = readerTypeForm.getId().intValue();
												name = readerTypeForm.getName();
									%>
									<option value="<%=ID%>"><%=name%></option>
									<%
										}
										}
									%>
							</select></td>
						</tr>
						<tr>
							<td align="center">ְҵ��</td>
							<td><input name="vocation" type="text" id="vocation"></td>
						</tr>
						<tr>
							<td align="center">�������ڣ�</td>
							<td><input name="birthday" type="text" id="birthday"></td>
						</tr>
						<tr>
							<td align="center">��Ч֤����</td>
							<td><select name="paperType" class="wenbenkuang"
								id="paperType">
									<option value="����֤" selected>����֤</option>
									<option value="ѧ��֤">ѧ��֤</option>
									<option value="����֤">����֤</option>
									<option value="����֤">����֤</option>
							</select></td>
						</tr>
						<tr>
							<td align="center">֤�����룺</td>
							<td><input name="paperNO" type="text" id="paperNO">
								*</td>
						</tr>
						<tr>
							<td align="center">�绰��</td>
							<td><input name="tel" type="text" id="tel"></td>
						</tr>
						<tr>
							<td align="center">Email��</td>
							<td><input name="email" type="text" id="email" size="50">
								<%-- <input name="operator" type="hidden" id="operator"
								value="<%=manager%>"> --%></td>
						</tr>
						<tr>
							<td align="center">��ע��</td>
							<td><textarea name="remark" cols="50" rows="5"
									class="wenbenkuang" id="remark"></textarea></td>
						</tr>
						<tr>
							<td align="center">&nbsp;</td>
							<td><input name="Submit" type="submit" class="btn_grey"
								value="����" onClick="return check(form1)"> &nbsp; <input
								name="Submit2" type="button" class="btn_grey" value="����"
								onClick="history.back()"></td>
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
