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
	Collection coll = (Collection) request.getAttribute("borrowQuery");
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
<script src="jS/function.js"></script>
<script language="javascript">
	function check(myform) {
		if (myform.flag[0].checked == false && myform.flag[1].checked == false) {
			alert("��ѡ���ѯ��ʽ!");
			return false;
		}
		if (myform.flag[1].checked) {
			if (myform.sdate.value == "") {
				alert("�����뿪ʼ����");
				myform.sdate.focus();
				return false;
			}
			if (CheckDate(myform.sdate.value)) {
				alert("������Ŀ�ʼ���ڲ���ȷ���磺2011-02-14��\n ��ע������!");
				myform.sDate.focus();
				return false;
			}
			if (myform.edate.value == "") {
				alert("�������������");
				myform.edate.focus();
				return false;
			}
			if (CheckDate(myform.edate.value)) {
				alert("������Ľ������ڲ���ȷ���磺2011-02-14��\n ��ע������!");
				myform.edate.focus();
				return false;
			}
		}
	}
</script>
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
					<li><a href="index.jsp">ϵͳ��ѯ</a></li>
					<li>></li>
					<li>ͼ����Ĳ�ѯ</li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<form name="myform" action="borrow?action=borrowQuery">
					<table width="98%" height="67" border="0" cellpadding="0"
						cellspacing="0" bgcolor="#E3F4F7" class="tableBorder_gray">
						<tr>
							<td rowspan="2" align="center" bgcolor="#00a9da">&nbsp;<img
								src="images/search3.gif" width="45" height="28"></td>
							<td height="29" bgcolor="#00a9da"><input name="flag"
								type="checkbox" class="noborder" value="a" checked>
								��ѡ���ѯ���ݣ� <select name="f" class="wenbenkuang" id="f">
									<option value="barcode">ͼ��������</option>
									<option value="bookname">ͼ������</option>
									<option value="readerbarcode">����������</option>
									<option value="readername">��������</option>
							</select> <input name="key" type="text" id="key" size="50"> <input
								name="Submit" id="redbutton" type="submit" class="btn_grey" value="��ѯ"
								onClick="return check(myform)"></td>
						</tr>
						<tr>
							<td height="26" bgcolor="#00a9da"><input name="flag"
								type="checkbox" class="noborder" value="b"> ����ʱ�䣺 �� <input
								name="sdate" type="text" id="sdate"> �� <input
								name="edate" type="text" id="edate"> (���ڸ�ʽΪ��2016-01-01)</td>
						</tr>
					</table>
				</form>
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
						String bookname = "";
						String bookbarcode = "";
						String readerbar = "";
						String readername = "";
						String borrowTime = "";
						String backTime = "";
						int ifback = 0;
						String ifbackstr = "";
				%>
				<table width="98%" border="1" cellpadding="0" cellspacing="0"
					bordercolor="#FFFFFF" bordercolordark="#F6B83B"
					bordercolorlight="#FFFFFF">
					<tr align="center" bgcolor="#e3F4F7">
						<td width="11%" bgcolor="#00a9da">ͼ��������</td>
						<td width="29%" bgcolor="#00a9da">ͼ������</td>
						<td width="15%" bgcolor="#00a9da">����������</td>
						<td width="13%" bgcolor="#00a9da">��������</td>
						<td width="12%" bgcolor="#00a9da">����ʱ��</td>
						<td width="12%" bgcolor="#00a9da">Ӧ��ʱ��</td>
						<td width="8%" bgcolor="#00a9da">�Ƿ�黹</td>
					</tr>
					<%
						while (it.hasNext()) {
								BorrowForm borrowForm = (BorrowForm) it.next();
								bookname = borrowForm.getBookName();
								bookbarcode = borrowForm.getBookBarcode();
								readerbar = borrowForm.getReaderBarcode();
								readername = borrowForm.getReaderName();
								borrowTime = borrowForm.getBorrowTime();
								backTime = borrowForm.getBackTime();
								ifback = borrowForm.getIfBack();
								if (ifback == 0) {
									ifbackstr = "δ�黹";
								} else {
									ifbackstr = "�ѹ黹";
								}
					%>
					<tr>
						<td style="padding:5px;">&nbsp;<%=bookbarcode%></td>
						<td style="padding:5px;"><%=bookname%></td>
						<td style="padding:5px;">&nbsp;<%=readerbar%></td>
						<td style="padding:5px;">&nbsp;<%=readername%></td>
						<td style="padding:5px;">&nbsp;<%=borrowTime%></td>
						<td style="padding:5px;">&nbsp;<%=backTime%></td>
						<td align="center" style="padding:5px;">&nbsp;<%=ifbackstr%></td>
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
