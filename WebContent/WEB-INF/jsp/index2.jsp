<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>添加订单</title>
	<link href="http://www.jq22.com/jquery/bootstrap-3.3.4.css" rel="stylesheet">
	 
</head>
<body>
	 
	<div class="jq22-container" style="text-align: center;">
 

    <h5>省份：</h5>
    <form class="form-inline" action="${pageContext.request.contextPath }/addDingdan.action" method="post">
    
     	<div class="form-group">
          <input type = "text" id="d_name" name = "d_name" class="form-control"  placeholder="请输入您的名字" >
        </div>
        <br/>
         <div class="form-group">
          <input type = "text" id="d_cfname" name = "d_cfname" class="form-control"  placeholder="请输入处方单的姓名" >
         </div>
         <br/>
        
         <div class="form-group">
          <input type = "text" id="d_phone" name = "d_phone" class="form-control" placeholder="请输入您的手机号" >
         </div>
        
    <br/>
      <div id="distpicker5" >
        <div class="form-group">
          <label class="sr-only" for="province10">Province</label>
          <select class="form-control" id="province10" name = "province10"></select>
        </div>
        <br/>
        <div class="form-group">
          <label class="sr-only" for="city10">City</label>
          <select class="form-control" id="city10" name = "city10"></select>
        </div>
        <br/>
        <div class="form-group">
          <label class="sr-only" for="district10">District</label>
          <select class="form-control" id="district10" name = "district10"></select>
        </div>
        <br/>
         <div class="form-group">
          <input type = "text" id = "d_jdxxdz" name = "d_jdxxdz" class="form-control" placeholder="请输入街道地址详细信息" >
         </div>
        <br/>
</div>



				<div class="form-group">
					<select class="form-control" id="d_yy"
						name="d_yy">
						  <option value="">请选择医院</option>  
						 	<c:forEach items="${yiyuan}" var="item">
									<option value="${item.y_name}"<%-- <c:if test="${item.y_id == 001}"> selected</c:if> --%>>${item.y_name }</option>
								</c:forEach> 
					</select>
				</div>
  		<br/>

		<div class="form-group">
						<select class="form-control" id="d_fw"
							name="d_fw">
						 	<option value="">服务类型</option>  
							 	<c:forEach items="${fuwuleixing}" var="item">
										<option value="${item.f_name}"<%-- <c:if test="${item.f_id == 001}"> selected</c:if> --%>>${item.f_name }</option>
									</c:forEach>  
						</select>
					</div>
	  		<br/>


		<div class="form-group">
          <input type = "text" id = "d_djh" name = "d_djh" class="form-control" placeholder=" 请输入正确的登记号" >
        </div>
		<br/>
      
      <input type = "submit"   class="form-control" value="提交">
    </form>
 		</div>
		
 
	
	<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script src="js/distpicker.data.js"></script>
	  <script src="js/distpicker.js"></script>
	  <script src="js/main.js"></script>

 


</body>
</html>