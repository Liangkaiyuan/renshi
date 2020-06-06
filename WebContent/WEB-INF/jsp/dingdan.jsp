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

<title>客户列表-BootCRM</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/css/boot-crm.css" rel="stylesheet"
	type="text/css">

 
</head>

<body>

	<div id="wrapper">
 
		 

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">订单信息</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			 
			
			
			
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">订单信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>姓名</th>
									<th>处方名称</th>
									<th>手机号</th>
									<th>省份</th>
									<th>城市</th>
									<th>区</th>
									<th>详细地址</th>
									<th>医院</th>
									<th>服务类型</th>
									<th>订单状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${dingdan}" var="row">
									<tr>
									    <td>${row.d_id}</td>
										<td>${row.d_name}</td>
										<td>${row.d_cfname}</td>
										<td>${row.d_phone}</td>
										<td>${row.province10}</td>
										<td>${row.city10}</td>
										<td>${row.district10}</td>
										<td>${row.d_jdxxdz}</td> 
										<td>${row.d_yy}</td>
										<td>${row.d_fw}</td>
										<td>${row.d_djh}</td>
										
										<td>
											<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer()">修改</a>
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
	<script src="<%=basePath%>js/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/js/sb-admin-2.js"></script>
	
	 

</body>

</html>
