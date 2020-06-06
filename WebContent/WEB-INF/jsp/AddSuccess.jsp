<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<input type="text"  id = "success" name = "success" value="${success}" placeholder="" style="display: none;">	
	
</body>


<script type="text/javascript">

function Success(){
	var a= document.getElementById("success").value;
	if(a=="success"){
		alert("添加成功");
		window.location.href="${pageContext.request.contextPath }/toindex.action"; 
		
	}
	//document.getElementById("success").value = "";
	
};
//页面加载后马上加载函数
window.onload = Success;

</script>
</html>