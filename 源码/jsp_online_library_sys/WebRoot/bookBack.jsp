<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="com.dao.BorrowDAO"%>
<%@ page import="com.actionForm.BorrowForm"%>
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
			.getAttribute("readerinfo");
	Collection coll = (Collection) request.getAttribute("borrowinfo");
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
<script language="javascript">
	function checkreader(form) {
		if (form.barcode.value == "") {
			alert("���������������!");
			form.barcode.focus();
			return;
		}
		form.submit();
	}
</script>
<style type="text/css">
#table1 {
	margin: auto;
	margin-top: 20px;
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
					<li><a href="index.jsp">ͼ��軹</a></li>
					<li>></li>
					<li>ͼ��黹</li>
				</ul>
			</div>
			<div id="right-buttom" style="overflow: auto;">
				<table id="table1" width="1000px" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="47" background="images/borrowBackRenew_back.gif">&nbsp;</td>
					</tr>
					<tr>
						<td height="72" align="center" valign="top"
							background="images/main_booksort_1.gif" bgcolor="#F8BF73"><table
								width="96%" border="0" cellpadding="1" cellspacing="1"
								bordercolor="#F8BF73">
								<tr>
									<td valign="top" bgcolor="#00a9da">
										<%
											int ID = 0;
											String name = "";
											String sex = "";
											String barcode = "";
											String birthday = "";
											String paperType = "";
											String paperNO = "";
											int number = 0;
											String typename = "";
											if (readerForm != null) {
												ID = readerForm.getId().intValue();
												name = readerForm.getName();
												sex = readerForm.getSex();
												barcode = readerForm.getBarcode();
												birthday = readerForm.getBirthday();
												paperType = readerForm.getPaperType();
												paperNO = readerForm.getPaperNO();
												number = readerForm.getNumber();
												typename = readerForm.getTypename();
											}
										%>
										<table width="100%" border="0" cellpadding="0" cellspacing="0"
											bgcolor="#FFFFFF">
											<form name="form1" method="post"
												action="borrow?action=bookback">

												<tr>
													<td><table width="90%" height="21" border="0"
															cellpadding="0" cellspacing="0">
															<tr>
																<td width="24%" height="18"
																	style="padding-left:7px;padding-top:7px;"><img
																	src="images/reader_checkbg.jpg" width="142"
																	height="18"></td>
																<td width="76%" style="padding-top:7px;">���������룺 <input
																	name="barcode" type="text" id="barcode"
																	value="<%=barcode%>" size="24"> &nbsp; <input
																	name="Button" id="bluebutton" type="button" class="btn_grey" value="ȷ��"
																	onClick="checkreader(form1)"></td>
															</tr>
														</table></td>
												</tr>
												<tr>
													<td height="13" align="left" style="padding-left:7px;"><hr
															width="90%" size="1"></td>
												</tr>
												<tr>
													<td align="center"><table width="96%" border="0"
															cellpadding="0" cellspacing="0">
															<tr>
																<td height="27">��&nbsp;&nbsp;&nbsp;&nbsp;���� <input
																	name="readername" type="text" id="readername"
																	value="<%=name%>"></td>
																<td>��&nbsp;&nbsp;&nbsp;&nbsp;�� <input name="sex"
																	type="text" id="sex" value="<%=sex%>"></td>
																<td>�������ͣ� <input name="readerType" type="text"
																	id="readerType" value="<%=typename%>"></td>
															</tr>
															<tr>
																<td height="27">֤�����ͣ� <input name="paperType"
																	type="text" id="paperType" value="<%=paperType%>"></td>
																<td>֤�����룺 <input name="paperNo" type="text"
																	id="paperNo" value="<%=paperNO%>"></td>
																<td>�ɽ������� <input name="number" type="text"
																	id="number" value="<%=number%>" size="17"> ��
																	&nbsp;
																</td>
															</tr>
														</table></td>
												</tr>
											</form>
										</table>
									</td>
								</tr>
								<tr>
									<td valign="top"><table width="100%" height="35"
											border="1" cellpadding="0" cellspacing="0"
											bordercolor="#FFFFFF" bordercolorlight="#FFFFFF"
											bordercolordark="#F6B83B" bgcolor="#FFFFFF">
											<tr align="center" bgcolor="#e3F4F7">
												<td width="24%" height="25" bgcolor="#00a9da">ͼ������</td>
												<td width="12%" bgcolor="#00a9da">����ʱ��</td>
												<td width="13%" bgcolor="#00a9da">Ӧ��ʱ��</td>
												<td width="14%" bgcolor="#00a9da">������</td>
												<td width="12%" bgcolor="#00a9da">���</td>
												<td bgcolor="#00a9da">����(Ԫ)</td>
												<td width="12%" bgcolor="#00a9da"><input
													name="Button22" type="button" class="btn_grey" value="��ɹ黹"
													onClick="window.location.href='bookBack.jsp'"></td>
											</tr>
											<%
												int id = 0;
												String bookname = "";
												String borrowTime = "";
												String backTime = "";
												Float price = new Float(0);
												String pubname = "";
												String bookcase = "";
												if (coll != null && !coll.isEmpty()) {
													Iterator it = coll.iterator();
													while (it.hasNext()) {
														BorrowForm borrowForm = (BorrowForm) it.next();
														id = borrowForm.getId().intValue();
														bookname = borrowForm.getBookName();
														borrowTime = borrowForm.getBorrowTime();
														backTime = borrowForm.getBackTime();
														price = borrowForm.getPrice();
														pubname = borrowForm.getPubName();
														bookcase = borrowForm.getBookcaseName();
											%>
											<tr>
												<td height="25" style="padding:5px;">&nbsp;<%=bookname%></td>
												<td style="padding:5px;">&nbsp;<%=borrowTime%></td>
												<td style="padding:5px;">&nbsp;<%=backTime%></td>
												<td align="center">&nbsp;<%=pubname%></td>
												<td align="center">&nbsp;<%=bookcase%></td>
												<td width="13%" align="center">&nbsp;<%=price%></td>
												<td width="12%" align="center"><a
													href="borrow?action=bookback&barcode=<%=barcode%>&id=<%=id%><%-- &operator=<%=manager%> --%>">�黹</a>&nbsp;</td>
											</tr>
											<%
												}
												}
											%>
										</table></td>
								</tr>

							</table></td>
					</tr>
					<tr>
						<td height="19" background="images/main_booksort_2.gif">&nbsp;</td>
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
