<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>信息列表</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/c/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/c/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/c/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/c/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/c/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/c/boot-crm.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		 
		
		 

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">信息管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" action="${pageContext.request.contextPath }/findAllManByCanShu.action" method="post">
						<div class="form-group">
							<label for="customerName">查询信息：</label> 
							<input type="text" class="form-control" id="canshu" value="" name="canshu" />
						</div>
						<%-- <div class="form-group">
							<label for="customerFrom">客户来源</label> 
							<select	class="form-control" id="customerFrom" placeholder="客户来源" name="custSource">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custIndustry">所属行业</label> 
							<select	class="form-control" id="custIndustry"  name="custIndustry">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custLevel">客户级别</label>
							<select	class="form-control" id="custLevel" name="custLevel">
								<option value="">--请选择--</option>
								<c:forEach items="${levelType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div> --%>
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">人员信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>姓名</th>
									<th>应聘职位</th>
									<th>出生年月</th>
									<th>性别</th>
									<th>籍贯</th>
									<th>手机号码</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${xinXiBiao}" var="row">
									<tr style="text-align: center;">
										<td>${row.id}</td>
										<td>${row.name}</td>
										<td>${row.yingpingzhiwei}</td>
										<td>${row.chushengnianyue}</td>
										<td>${row.sex}</td>
										<td>${row.province10}</td>
										<td>${row.shoujihaoma}</td>
										<td>
											<a href="${pageContext.request.contextPath }/findManById.action?id=${row.id}" class="btn btn-primary btn-xs" data-toggle="modal">${row.id}查看</a>
											<a href="${pageContext.request.contextPath }/findManByIdToEdit.action?id=${row.id}" class="btn btn-primary btn-xs" data-toggle="modal">${row.id}编辑</a>
											<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer()">删除</a>
										</td>
							</tr>
						</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
							<itcast:page url="${pageContext.request.contextPath }/customer/list.action" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->

	</div>
 
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=basePath%>js/c/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/c/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/c/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/c/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/c/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/c/sb-admin-2.js"></script>
	
	 

</body>

</html>
