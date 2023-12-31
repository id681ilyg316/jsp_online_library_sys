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
<head>
<base href="<%=basePath%>">

<title>图书管理系统</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
</head>

<body>
	<div class="m-right">
		<div class="right-nav">
			<ul>
				<li><img src="images/home.png"></li>
				<li style="margin-left: 25px;">您当前的位置：</li>
				<li><a href="#">首页</a></li>
				<li>></li>
				<li><a href="#">图书借阅排行榜</a></li>
			</ul>
		</div>
		<div id="right-buttom" style="overflow: auto;">
			<%
				BorrowDAO borrowDAO = new BorrowDAO();
				Collection coll_book = (Collection) borrowDAO.bookBorrowSort();
			%>
			<table width="1000" height="510" border="0" align="center"
				cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
				class="tableBorder_gray">
				<tr>
					<td align="center" valign="top" style="padding:5px;"><table
							width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td height="20" align="right" valign="middle"
									class="word_orange"></td>
							</tr>
							<tr>
								<td valign="top"><table width="100%" border="0"
										cellspacing="0" cellpadding="0">
										<tr>
											<td height="57" background="images/main_booksort.gif">&nbsp;</td>
										</tr>
										<tr>
											<td height="72" valign="top"><table width="100%"
													height="63" border="0" cellpadding="0" cellspacing="0">
													<tr>
														<td width="2%" rowspan="2">&nbsp;</td>
														<td width="96%" align="center" valign="top"><table
																width="100%" border="1" cellpadding="0" cellspacing="0"
																bordercolor="#00a9da" bordercolordark="#B7B6B6"
																bordercolorlight="#FFFFFF">
																<tr align="center">
																	<td width="5%" height="25">排名</td>
																	<td width="10%">图书条形码</td>
																	<td width="24%">图书名称</td>
																	<td width="10%">图书类型</td>
																	<td width="10%">书架</td>
																	<td width="14%">出版社</td>
																	<td width="11%">作者</td>
																	<td>定价(元)</td>
																	<td>借阅次数</td>
																</tr>
																<%
																	if (coll_book != null && !coll_book.isEmpty()) {
																		Iterator it_book = coll_book.iterator();
																		int i = 1;
																		int degree = 0;
																		String bookname = "";
																		String typename = "";
																		String barcode_book = "";
																		String bookcase = "";
																		String pub = "";
																		String author = "";
																		String translator = "";
																		Float price = new Float(0);
																		while (it_book.hasNext() && i < 6) {
																			BorrowForm borrowForm = (BorrowForm) it_book.next();
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
																	<td height="25" align="center"><%=i%></td>
																	<td style="padding:5px;">&nbsp;<%=barcode_book%></td>
																	<td style="padding:5px;"><%=bookname%></td>
																	<td style="padding:5px;"><%=typename%></td>
																	<td align="center">&nbsp;<%=bookcase%></td>
																	<td align="center">&nbsp;<%=pub%></td>
																	<td width="11%" align="center"><%=author%></td>
																	<td width="8%" align="center"><%=price%></td>
																	<td width="8%" align="center"><%=degree%></td>
																</tr>
																<%
																	i++;
																		}
																	}
																%>
															</table></td>
														<td width="2%" rowspan="2">&nbsp;</td>
													</tr>
													<tr>
														<td height="30" align="right" valign="middle"><a
															href=borrow?action=bookBorrowSort><img
																src="images/more.gif" width="50" height="20" border="0">&nbsp;</a></td>
													</tr>
												</table></td>
										</tr>
									</table></td>
							</tr>
						</table></td>
				</tr>
			</table>
		</div>
	</div>
	</div>
</body>
</html>
