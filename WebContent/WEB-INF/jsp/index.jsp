<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>候选人（新员工）信息登记表</title>
	<!-- <link href="http://www.jq22.com/jquery/bootstrap-3.3.4.css" rel="stylesheet">
	 --> <link href="css/bootstrap-3.3.4.css" rel="stylesheet">
	 
	 <!-- 删除这个地方 -->
	 <style type="text/css">
	  body {background:url(image/daxiang.jpg); background-attachment: fixed; top center no-repeat; background-size:cover;}
	 </style>
	 
	 <!-- 日期 -->
	  <link href="js/date/date.css" rel="stylesheet">
	 
</head>
<body>
	 	<br/>
 <span>
				<!-- 大翔logo -->
				<img width="189" height="49" src="image/a.png">

			</span><br/><br/>
			
	<div class="jq22-container" style="text-align: center; 
	
	/* 删除这个地方 */
	background-color: white; margin-left: 10%;margin-right: 10%;">
	


    <h3>候选人（新员工）信息登记表</h3><br/>
    <form class="form-inline" action="${pageContext.request.contextPath }/addXinXiBiao.action"  id ="form1" method="post" onsubmit="return check()">
    
      	<div class="form-group">
        <p style="text-align: left;"> <span style="color: red;font-size: 20px;float: left;">*</span>姓&nbsp;&nbsp;&nbsp;&nbsp;名：&nbsp;&nbsp;&nbsp;</p><input type = "text" id="name" name = "name" class="form-control"  placeholder="请输入您的名字" />
        </div>
        <br/><br/>
         <div class="form-group">
       <p style="text-align: left;">  <span style="color: red;font-size: 20px;float: left;">*</span>应聘职位：  </p><input type = "text" id="yingpingzhiwei" name = "yingpingzhiwei" class="form-control"  placeholder="请输入应聘职位" >
         </div>
         <br/>
        <br/>
         <div class="form-group">
       <p style="text-align: left;">  <span style="color: red;font-size: 20px;float: left;">*</span> 出生年月：  </p><input type = "text" id="chushengnianyue" name = "chushengnianyue" class="form-control" placeholder="请输入您的出生年月" >
         </div>
         <br/>
          <br/>
            <div class="form-group">
			 <p style="text-align: left;"> <span style="color: red;font-size: 20px;float: left;">*</span>性别: </p>	
			 <select  id="sex" name="sex" >
						  <option value="">请选择您的性别</option>  
									<option value="男">男</option>
									<option value="女">女</option>
					</select>
				</div>
          <br/>
          <br>
          
          
          <div class="form-group">
          <p style="text-align: left;"> <span style="color: red;font-size: 20px;float: left;">*</span>民&nbsp;&nbsp;&nbsp;&nbsp;族：&nbsp;&nbsp;&nbsp;  </p><input type = "text" id="minzu" name = "minzu" class="form-control" placeholder="请输入民族" >
         </div>
          <br/><br/>
          <div class="form-group">
        <p style="text-align: left;"> <span style="color: red;font-size: 20px;float: left;">*</span>身高（cm）：</p> <input type = "text" id="shengao" name = "shengao" class="form-control" placeholder="请输入身高（cm）" > <span style="color: red;font-size: 16px">&nbsp;</span>
         </div> 
          <br/><br/>
          
          <div class="form-group">
        <p style="text-align: left;"> <span style="color: red;font-size: 20px;float: left;">*</span>体重（kg）：</p> <input type = "text" id="tizhong" name = "tizhong" class="form-control" placeholder="请输入体重（kg）" ><span style="color: red;font-size: 16px">&nbsp;</span>
         </div>
          <br/><br/>
		  
    
       
        <div  class="form-group">
     <p style="text-align: left;">  <span style="color: red;font-size: 20px;float: left;">*</span>籍&nbsp;&nbsp;&nbsp;&nbsp;贯：&nbsp;&nbsp;&nbsp; </p>
        <input type = "text" id="province10" name = "province10" class="form-control" placeholder="请输入籍贯（省---市）" >
        <br/>

   </div>
          <br/>
          
          
           <div class="form-group">
			<p style="text-align: left;"> <span style="color: red;font-size: 20px;float: left;">*</span> 政治面貌: </p>		
			<select  id="zhengzhimianmao" name="zhengzhimianmao" >
						  <option value="">请输入政治面貌</option>  
									<option value="群众">群众</option>
									<option value="中共预备党员">中共预备党员</option>
									<option value="中共党员">中共党员</option>
									<option value="共青团员">共青团员</option>
					</select>
				</div>
          
          <!-- 
          <div class="form-group">
       政治面貌： <input type = "text" id="zhengzhimianmao" name = "zhengzhimianmao" class="form-control" placeholder="" >
         </div>
         -->
        
        
          <br/>
          <div class="form-group">
   <p style="text-align: left;">   <span style="color: red;font-size: 20px;float: left;">*</span>婚姻状况： </p>
					<select  id="hunyinzhuangkuang" name="hunyinzhuangkuang">
						  <option value="">请选择婚姻状况</option>  
									<option value="已婚">已婚</option>
									<option value="未婚">未婚</option>
					</select>
				</div>
          <br/>
          <div class="form-group">
   <p style="text-align: left;">   <span style="color: red;font-size: 20px;float: left;">*</span>手机号码：  </p><input type = "text" id="shoujihaoma" name = "shoujihaoma" class="form-control" placeholder="请输入手机号码" >
         </div>
          <br/>
          <div class="form-group">
     <p style="text-align: left;"> 微信号：</p>  <input type = "text" id="weixinhao" name = "weixinhao" class="form-control" placeholder="" >
         </div>
         <br/>
          <div class="form-group">
    <p style="text-align: left;">  电子邮件：</p>  <input type = "text" id="emall" name = "emall" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
      <p style="text-align: left;"> 入党/团时间：</p> <!-- <input type = "text" id="rudangshijian" name = "rudangshijian" class="form-control" placeholder="" > -->
       <input id="rudangshijian" name = "rudangshijian" type="text"  class="form-control">
 
         </div>
          <br/>
          <div class="form-group">
    <p style="text-align: left;"><span style="color: red;font-size: 20px;float: left;">*</span> 户口性质：</p>
					<select  id="hukouxingzhi"
						name="hukouxingzhi" >
						  <option value="">请选择户口性质</option>  
									<option value="（广州）本地城镇">（广州）本地城镇</option>
									<option value="（广州）本地农村">（广州）本地农村</option>
									<option value="外地城镇">外地城镇</option>
									<option value="外地农村">外地农村</option>
									
								
					</select>
				</div>
          <br/>
         <div class="form-group">
			<p style="text-align: left;">	<span style="color: red;font-size: 20px;float: left;">*</span>文化程度：</p>	<select  id="wenhuachengdu"
						name="wenhuachengdu" >
						  <option value="">请选择 文化程度</option>  
						 	 <option value="硕士研究生及以上">硕士研究生及以上</option>
									<option value="大学本科">大学本科</option>
									<option value="大学专科">大学专科</option>
									<option value="中专">中专</option>
									<option value="高中及以下">高中及以下</option>
					</select>
				</div>
          <br/>
         <div class="form-group">
      <p style="text-align: left;"><span style="color: red;font-size: 20px;float: left;">*</span>户籍地址：</p><input type = "text" id="hujidizhi" name = "hujidizhi" class="form-control" placeholder="请输入户籍地址" >
         </div>
          <br/>
        <div class="form-group">
    <p style="text-align: left;"><span style="color: red;font-size: 20px;float: left;">*</span>现居地：&nbsp;&nbsp;&nbsp;&nbsp; </p>   <input type = "text" id="xianzhuzhi" name = "xianzhuzhi" class="form-control" placeholder="请输入现居地" >
         </div>
          <br/><br/>  
       <div  >紧急联系人1</div>
          <br/> 
          <div class="form-group">
       <p style="text-align: left;">姓&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;  </p> <input type = "text" id="jjlxr_xingming" name = "jjlxr_xingming" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
    <p style="text-align: left;">  与本人关系: </p>   <input type = "text" id="jjlxr_yubenrenguanxi" name = "jjlxr_yubenrenguanxi" class="form-control" placeholder="" >
         </div>
          <br/>
          
          <div class="form-group">
      <p style="text-align: left;">  联系电话:   </p><input type = "text" id="jjlxr_dianhua" name = "jjlxr_dianhua" class="form-control" placeholder="" >
         </div>
          <br/>
		   
		  
		  
		  
		  
		  <div class="form-group">
        办公软件:  <input type = "checkbox" id="jsjsp_bangongruanjian1" name = "jsjsp_bangongruanjian1" value="Word" placeholder="" >&nbsp;Word&nbsp;&nbsp;
		  <input type = "checkbox" id="jsjsp_bangongruanjian2" name = "jsjsp_bangongruanjian2" value="Excel"  placeholder="" >&nbsp;Excel&nbsp;&nbsp;
		  <input type = "checkbox" id="jsjsp_bangongruanjian3" name = "jsjsp_bangongruanjian3" value="PPT"  placeholder="" >&nbsp;PPT&nbsp;&nbsp;
		 其他: <span><input type = "text" id="jsjsp_bangongruanjian4" name = "jsjsp_bangongruanjian4" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /></span>
         </div>
         <br />
		 
		 
		 <div class="form-group">
		 制图软件:  <input type = "checkbox" id="jsjsp_huitugongju1" name = "jsjsp_huitugongju1" value="CAD"  placeholder="" >&nbsp;CAD&nbsp;&nbsp;
		   <input type = "checkbox" id="jsjsp_huitugongju2" name = "jsjsp_huitugongju2" value="Photoshop"  placeholder="" >&nbsp;Photoshop&nbsp;&nbsp;
		   
		  其他: <span><input type = "text" id="jsjsp_qita" name = "jsjsp_qita" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /></span>
		  </div>
		 <br />
		  
		 
		 <div class="form-group">
		 语言能力:  <input type = "checkbox" id="yuyannengli1" name = "yuyannengli1" value="普通话"  placeholder="" >&nbsp;普通话&nbsp;&nbsp;
		   <input type = "checkbox" id="yuyannengli2" name = "yuyannengli2" value="粤话"  placeholder="" >&nbsp;粤话&nbsp;&nbsp;
		 &nbsp; 其他: <span><input type = "text" id="yuyannengli3" name = "yuyannengli3" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /></span>
		  </div>
		 <br />
		 
		 
		 <div class="form-group">
		 有效驾照:  
		 &nbsp; 持有 <span><input type = "text" id="jiazhao1" name = "jiazhao1" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />&nbsp;驾照&nbsp;
		 &nbsp;&nbsp;<input type = "checkbox" id="jiazhao2" name = "jiazhao2" value="无"  placeholder="" >&nbsp;&nbsp;无
		  </div>
		  <br/>
		  
		  <div class="form-group">
		  违法记录:  
		   
		  <input type = "checkbox" id="weifajilu1" name = "weifajilu1" value="无"  placeholder="" >&nbsp;&nbsp;无&nbsp;
		  
		   &nbsp;&nbsp;&nbsp;<input type = "checkbox" id="weifajilu2" name = "weifajilu2" value=""  
		   placeholder="" >&nbsp;&nbsp;有&nbsp; <input type = "text" id="weifajilu3" name = "weifajilu3" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		    
		 <!--  --> </div>
		  
		   <br/><br/>
		   
		  <div  >爱好与特长</div>
		  <br/>
		  
          <div class="form-group">
         <p style="text-align: left;">  1.运动类：</p><input type = "text" id="ahytc_yundonglei" name = "ahytc_yundonglei" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
         <p style="text-align: left;">  2.文艺类：</p><input type = "text" id="ahytc_wenyilei" name = "ahytc_wenyilei" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
         <p style="text-align: left;">  3.其&nbsp;&nbsp;&nbsp;他：</p><input type = "text" id="ahytc_qita1" name = "ahytc_qita1" class="form-control" placeholder="" >
         </div>
          <br/>
		  <br/>
		  
		  <div>职业资格证书</div>
		  <br/>
		  
          <div class="form-group">
         <p style="text-align: left;"> 1.医药类：</p><input type = "text" id="zyzgzs_yiyaolei" name = "zyzgzs_yiyaolei" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
         <p style="text-align: left;">  2.财务类：</p><input type = "text" id="zyzgzs_caiwulei" name = "zyzgzs_caiwulei" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
          <p style="text-align: left;"> 3.语言类：</p><input type = "text" id="zyzgzs_yuyanlei" name = "zyzgzs_yuyanlei" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
        <p style="text-align: left;">  4.其&nbsp;&nbsp;&nbsp;他：</p> <input type = "text" id="zyzgzs_qita" name = "zyzgzs_qita" class="form-control" placeholder="" >
         </div>
          <br/>
		  <br/>
		  
		  
		  
		  <div>教育背景1</div>
		  
		  <br/><br/>
          <div class="form-group">
         <p style="text-align: left;"> (1) 起止时间： </p><input type = "text" id="jybj_qizhishijian1" name = "jybj_qizhishijian1" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
        <p style="text-align: left;">  (2) 在何校学习/进修：</p><input type = "text" id="jybj_zaiheyuanxiaoxuexi1" name = "jybj_zaiheyuanxiaoxuexi1" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
        <p style="text-align: left;">  (3) 专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;:</p> <input type = "text" id="jybj_zhuanye1" name = "jybj_zhuanye1" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
        <p style="text-align: left;">   (4) 就读方式：</p><input type = "text" id="jybj_jiudufangshi1" name = "jybj_jiudufangshi1" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
        <p style="text-align: left;">   (5) 学历/证书：</p><input type = "text" id="jybj_xuelizhengshu1" name = "jybj_xuelizhengshu1" class="form-control" placeholder="" >
         </div>
          <br/><br/>
		  
		  <div>教育背景2</div>
		   
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (1) 起止时间：</p><input type = "text" id="jybj_qizhishijian2" name = "jybj_qizhishijian2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (2) 在何校学习/进修：</p><input type = "text" id="jybj_zaiheyuanxiaoxuexi2" name = "jybj_zaiheyuanxiaoxuexi2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (3) 专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;: </p><input type = "text" id="jybj_zhuanye2" name = "jybj_zhuanye2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;"> (4) 就读方式：</p><input type = "text" id="jybj_jiudufangshi2" name = "jybj_jiudufangshi2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;"> (5) 学历/证书：</p><input type = "text" id="jybj_xuelizhengshu2" name = "jybj_xuelizhengshu2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <br/>
		   
		  <div>教育背景3</div>
		   
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (1) 起止时间：</p><input type = "text" id="jybj_qizhishijian3" name = "jybj_qizhishijian3" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (2) 在何校学习/进修：</p> <input type = "text" id="jybj_zaiheyuanxiaoxuexi3" name = "jybj_zaiheyuanxiaoxuexi3" class="form-control" placeholder="" />
           </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (3) 专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;:</p> <input type = "text" id="jybj_zhuanye3" name = "jybj_zhuanye3" class="form-control" placeholder="" />
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;"> (4) 就读方式：</p><input type = "text" id="jybj_jiudufangshi3" name = "jybj_jiudufangshi3" class="form-control" placeholder="" / >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;"> (5) 学历/证书</p><input type = "text" id="jybj_xuelizhengshu3" name = "jybj_xuelizhengshu3" class="form-control" placeholder="" / >
		  </div>
		   <br/> 
		   <br />
		   
		  <div>任职经历1</div>
		  <br/>
		  <div class="form-group">
		  <p style="text-align: left;"> (1) 起止时间：</p><input type = "text" id="rzjl_qizhishijian1" name = "rzjl_qizhishijian1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (2) 工作单位：</p><input type = "text" id="rzjl_gongzuodanwei1" name = "rzjl_gongzuodanwei1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (3) 职&nbsp;&nbsp;&nbsp;&nbsp;务&nbsp;&nbsp;&nbsp;&nbsp;：</p><input type = "text" id="rzjl_zhiwu1" name = "rzjl_zhiwu1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;"> (4) 离职原因：</p><input type = "text" id="rzjl_lizhiyuanyin1" name = "rzjl_lizhiyuanyin1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;"> (5) 证明人及联系方式：</p><input type = "text" id="rzjl_zmr_lxfs1" name = "rzjl_zmr_lxfs1" class="form-control" placeholder="" >
		  </div>
		  <br/><br/>
		  <div>任职经历2</div>
		  <br/>
		  <div class="form-group">
		  <p style="text-align: left;">(1) 起止时间：</p><input type = "text" id="rzjl_qizhishijian2" name = "rzjl_qizhishijian2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;">(2) 工作单位：</p><input type = "text" id="rzjl_gongzuodanwei2" name = "rzjl_gongzuodanwei2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;">(3) 职&nbsp;&nbsp;&nbsp;&nbsp;务&nbsp;&nbsp;&nbsp;&nbsp;：</p><input type = "text" id="rzjl_zhiwu2" name = "rzjl_zhiwu2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;">(4) 离职原因：</p><input type = "text" id="rzjl_lizhiyuanyin2" name = "rzjl_lizhiyuanyin2" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;">(5) 证明人及联系方式：</p><input type = "text" id="rzjl_zmr_lxfs2" name = "rzjl_zmr_lxfs2" class="form-control" placeholder="" >
		  </div>
		  
		  <br/><br/>
		  <div>任职经历3</div>
		  <br/>
		  <div class="form-group">
		 <p style="text-align: left;"> (1) 起止时间：</p><input type = "text" id="rzjl_qizhishijian3" name = "rzjl_qizhishijian3" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		 <p style="text-align: left;"> (2) 工作单位：</p><input type = "text" id="rzjl_gongzuodanwei3" name = "rzjl_gongzuodanwei3" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;">(3) 职&nbsp;&nbsp;&nbsp;&nbsp;务&nbsp;&nbsp;&nbsp;&nbsp;：</p><input type = "text" id="rzjl_zhiwu3" name = "rzjl_zhiwu3" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (4) 离职原因：</p><input type = "text" id="rzjl_lizhiyuanyin3" name = "rzjl_lizhiyuanyin3" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   <p style="text-align: left;">(5) 证明人及联系方式： </p><input type = "text" id="rzjl_zmr_lxfs3" name = "rzjl_zmr_lxfs3" class="form-control" placeholder="" >
		  </div>
		  
		  
		  
		  <br/><br/>
		  <div>家庭成员1</div>
		  <br/>
		  <div class="form-group">
		 <p style="text-align: left;">(1) 姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;：</p><input type = "text" id="jtcy_xingming1" name = "jtcy_xingming1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		<p style="text-align: left;"> (2) 与本人关系：</p><input type = "text" id="jtcy_yubenrenguanxi1" name = "jtcy_yubenrenguanxi1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		 <p style="text-align: left;"> (3) 出生年月：</p><input type = "text" id="jtcy_chushengnianyue1" name = "jtcy_chushengnianyue1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (4) 从事职业：</p><input type = "text" id="jtcy_congshizhiye1" name = "jtcy_congshizhiye1" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  <p style="text-align: left;"> (5)&nbsp;&nbsp;&nbsp;&nbsp;居住地：</p><input type = "text" id="jtcy_juzhudi1" name = "jtcy_juzhudi1" class="form-control" placeholder="" >
		  </div>
		  
		   <br/><br/>
		    <div>家庭成员2</div>
		    <br/>
		    <div class="form-group">
		   <p style="text-align: left;">(1) 姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;：</p><input type = "text" id="jtcy_xingming2" name = "jtcy_xingming2" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		   <p style="text-align: left;">(2) 与本人关系：</p><input type = "text" id="jtcy_yubenrenguanxi2" name = "jtcy_yubenrenguanxi2" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		    <p style="text-align: left;">(3) 出生年月：</p><input type = "text" id="jtcy_chushengnianyue2" name = "jtcy_chushengnianyue2" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		     <p style="text-align: left;">(4) 从事职业：</p><input type = "text" id="jtcy_congshizhiye2" name = "jtcy_congshizhiye2" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		     <p style="text-align: left;">(5)&nbsp;&nbsp;&nbsp;&nbsp;居住地：</p><input type = "text" id="jtcy_juzhudi2" name = "jtcy_juzhudi2" class="form-control" placeholder="" >
		    </div>
			
			<br/><br/>
			 <div>家庭成员3</div>
			 <br/>
			 <div class="form-group">
			<p style="text-align: left;">(1) 姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;：</p><input type = "text" id="jtcy_xingming3" name = "jtcy_xingming3" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			<p style="text-align: left;">(2) 与本人关系：</p><input type = "text" id="jtcy_yubenrenguanxi3" name = "jtcy_yubenrenguanxi3" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			 <p style="text-align: left;">(3) 出生年月：</p><input type = "text" id="jtcy_chushengnianyue3" name = "jtcy_chushengnianyue3" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			  <p style="text-align: left;">(4) 从事职业：</p><input type = "text" id="jtcy_congshizhiye3" name = "jtcy_congshizhiye3" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			 <p style="text-align: left;"> (5)&nbsp;&nbsp;&nbsp;&nbsp;居住地：</p><input type = "text" id="jtcy_juzhudi3" name = "jtcy_juzhudi3" class="form-control" placeholder="" >
			 </div>
		  
		  
		  
		  
		  
		  
		  
		  <br /><br />
		  <div>个人健康状况</div>
		  <br />
          <div class="form-group">
         <p style="text-align: left;"> <span style="color: red;font-size: 20px;float: left;">*</span>视力情况：</p><select id="grjksm_shili"
						name="grjksm_shili" >
						  <option value="">请选择视力</option>  
									<option value="良好">良好</option>
									<option value="辅助">辅助</option>
					</select>
         </div>
          <br/>
          <div class="form-group">
         <p style="text-align: left;"><span style="color: red;font-size: 20px;float: left;">*</span> 听力情况：</p>
         <select  id="grjksm_tingli" name="grjksm_tingli" >
						  <option value="">请选择视力</option>  
									<option value="良好">良好</option>
									<option value="辅助">辅助</option>
					</select>
         </div>
          <br/>
		 <div class="form-group">
         <p style="text-align: left;"> 血&nbsp;&nbsp;&nbsp;&nbsp;型&nbsp;&nbsp;&nbsp;&nbsp;：</p><input type = "text" id="grjksm_xuexing" name = "grjksm_xuexing" class="form-control" placeholder="" >
         </div>
          <br/>
		  <div class="form-group">
		  是否患有遗传性疾病、精神类或传染性疾病？：<br><input type = "checkbox" id="grjksm_jibing" name = "grjksm_jibing" value="无"  placeholder="" >&nbsp;无
		  </div>
	 &nbsp;&nbsp;&nbsp;
		  <div class="form-group">
		  有，请说明：  <input type = "text" id="grjksm_jibing_sm" name = "grjksm_jibing_sm" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		  </div>
		  <br/>
		  
 
		  
          <br/>
		  <div>其 他</div>
           <br/>
			 <div class="form-group">
		是否与本集团在职员工存在亲属关系？  
		 <br> <input type = "checkbox" id="qita_jituanqinshu" name = "qita_jituanqinshu" value="无"  placeholder="" >&nbsp;无
		  
		   &nbsp;&nbsp;
		   有 请填下面信息
		  <br/>亲属员工1姓名:<input type = "text" id="qita_jituanqinshu1" name = "qita_jituanqinshu1" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		<br> &nbsp; &nbsp; &nbsp;与本人关系:<input type = "text" id="qita_yubenrenguanxi1" name = "qita_yubenrenguanxi1" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /><br/>
		  亲属员工2姓名 <input type = "text" id="qita_jituanqinshu2" name = "qita_jituanqinshu2" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		<br> &nbsp; &nbsp; &nbsp;与本人关系:<input type = "text" id="qita_yubenrenguanxi2" name = "qita_yubenrenguanxi2" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /><br/>
		 亲属员工3姓名  <input type = "text" id="qita_jituanqinshu3" name = "qita_jituanqinshu3" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		<br> &nbsp; &nbsp; &nbsp;与本人关系: <input type = "text" id="qita_yubenrenguanxi3" name = "qita_yubenrenguanxi3" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		    
		  </div>
         
         
         
         <br/>
          <br/>
		  <div class="form-group">
		  是否曾在本集团/相关子公司任职？<input type = "checkbox" id="qita_zigongsirenzhi" name = "qita_zigongsirenzhi" value="无"  placeholder="" >&nbsp;无
		  </div>
	 &nbsp;&nbsp;&nbsp;
		  <div class="form-group">
		   
		有， 任职子公司名称是：  <input type = "text" id="qita_zgsrz_mingcheng" name = "qita_zgsrz_mingcheng" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		  </div>
		  <br/>
           
        
    <br/>
     
 <div class="form-group">
		     
		     <div align=center>

			<table class=MsoNormalTable border=1 cellspacing=0>
				<tr style="height:100pt;">
					<td valign=center>
						<p class=MsoNormal style="margin-top:7.8000pt;margin-left:18.0000pt;mso-para-margin-top:0.5000gd;
text-indent:-18.0000pt;mso-pagination:widow-orphan;mso-list:l0 level1 lfo2;">
						 <span style="font-family:'Times New Roman';mso-fareast-font-
family:宋体;font-size:10.5000pt;
mso-font-kerning:1.0000pt;"><span
								 style='mso-list:Ignore;'>&nbsp;1、<span>&nbsp;</span></span></span>
						<span style="mso-spacerun:'yes';font-family:宋体;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">本人知悉，在面试过程中可能了解到有关大翔集团组织结
								构、管理人员、业务运营等内部管理及商业运营信息。
								本人承
								诺不对外披露以上任何在面试过程中获知的信息。</span><span style="font-family:微
软雅黑;mso-bidi-font-family:Tahoma;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">

								<o:p></o:p>
							</span></p>
						<p class=MsoNormal style="margin-top:7.8000pt;margin-left:18.0000pt;mso-para-margin-top:0.5000gd;
text-indent:-18.0000pt;mso-pagination:widow-orphan;mso-list:l0 level1 lfo2;">
							<![if !
supportLists]><span style="font-family:'Times New Roman';mso-fareast-font-
family:宋体;font-size:10.5000pt;
mso-font-kerning:1.0000pt;"><span
								 style='mso-list:Ignore;'>&nbsp;2、<span>&nbsp;</span></span></span>
							<![endif]><span style="mso-spacerun:'yes';font-family:宋体;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">本人授权给大翔集团以及大翔集团委托的第三方向本表中
								列出的本人曾任职公司以及证明人进行背景调查。</span><span style="font-
family:微软雅黑;mso-bidi-font-family:Tahoma;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">

								<o:p></o:p>
							</span></p>
						<p class=MsoNormal style="margin-top:7.8000pt;margin-bottom:12.0000pt;margin-left:18.0000pt;
mso-para-margin-top:0.5000gd;text-indent:-18.0000pt;mso-pagination:widow-
orphan;
mso-list:l0 level1 lfo2;">
							<![if !
supportLists]><span style="font-family:'Times New Roman';mso-fareast-font-
family:宋体;font-size:10.5000pt;
mso-font-kerning:1.0000pt;"><span
								 style='mso-list:Ignore;'>&nbsp;3、<span>&nbsp;</span></span></span>
							<![endif]><span style="mso-spacerun:'yes';font-family:宋体;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">本人确认本表中所提供的个人信息均为准确、真实、有效
								，同时本人充分了解这是双方订立劳动合同的重要前提，如存在弄虚作假或隐瞒不报的情
								况，本人同意公司解除劳动合同或对劳动合同做无效认定处理。</span><span style="font-
family:微软雅黑;mso-bidi-font-family:Tahoma;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">

								<o:p></o:p>
							</span></p>



 
						 

					</td>
				</tr>
			</table>
		</div>
		     
		     
 </div>
 
  <br/>
 
  <br/>
      
      <input type = "submit"   class="form-control" value="提交">
      <br/>
      <br/>
      <br/>
      <br/>
      
    </form>
 		</div>
		
		<!-- 添加成功界面 -->
	<input type="text"  id = "success" name = "success" value="${success}" placeholder="" style="display: none;">	
		<br/>
 <br/>
	
	
	<!-- <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script> -->
	<script src="js/jq22-jquery.min.js"></script>
	<!-- <script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script> -->
	<script src="js/jq22-bootstrap-3.3.4.js"></script>
	
	<script src="js/distpicker.data.js"></script>
	  <script src="js/distpicker.js"></script>
	  
	  <script src="js/main.js"></script>

 <!-- 日期 -->
  <script type="text/javascript" src="js/date/jquery.min.js"></script>

<script type="text/javascript" src="js/date/jquery.date_input.pack.js"></script> 
  

<script type="text/javascript">
/* 日期 */
$(function(){

	$('#rudangshijian').date_input();

	});
$(function(){

	$('#chushengnianyue').date_input();

	});
	






 function check(){
	   　　var name = $("#name").val();
	　　if(name == null || name == undefined || name == ""){
	　　　　alert("名称不能为空！");
	　　　　return false;
	　　} ;
	
	var yingpingzhiwei = $("#yingpingzhiwei").val();
	if(yingpingzhiwei == null || yingpingzhiwei == undefined || yingpingzhiwei == ""){
	　　　　alert("应聘职位不能为空！");
	　　　　return false;
	　　} ; 
	
	var chushengnianyue = $("#chushengnianyue").val();
	if(chushengnianyue == null || chushengnianyue == undefined || chushengnianyue == ""){
	　　　　alert("出生年月不能为空！");
	　　　　return false;
	　　} ;
	
	var sex = $("#sex").val();
	if(sex == null || sex == undefined || sex == ""){
	　　　　alert("性别不能为空！");
	　　　　return false;
	　　} ;
	
	var minzu = $("#minzu").val();
	if(minzu == null || minzu == undefined || minzu == ""){
	　　　　alert("民族不能为空！");
	　　　　return false;
	　　} ;
	
	var province10 = $("#province10").val();
	if(province10 == null || province10 == undefined || province10 == ""){
	　　　　alert("籍贯省份不能为空！");
	　　　　return false;
	　　} ;
 
	
	var zhengzhimianmao = $("#zhengzhimianmao").val();
	if(zhengzhimianmao == null || zhengzhimianmao == undefined || zhengzhimianmao == ""){
	　　　　alert("政治面貌不能为空！");
	　　　　return false;
	　　} ;
	
	var hunyinzhuangkuang = $("#hunyinzhuangkuang").val();
	if(hunyinzhuangkuang == null || hunyinzhuangkuang == undefined || hunyinzhuangkuang == ""){
	　　　　alert("婚姻状况不能为空！");
	　　　　return false;
	　　} ;
	
	var shoujihaoma = $("#shoujihaoma").val();
	if(shoujihaoma == null || shoujihaoma == undefined || shoujihaoma == ""){
	　　　　alert("手机号码不能为空！");
	　　　　return false;
	　　} ;
	
	var hukouxingzhi = $("#hukouxingzhi").val();
	if(hukouxingzhi == null || hukouxingzhi == undefined || hukouxingzhi == ""){
	　　　　alert("户口性质不能为空！");
	　　　　return false;
	　　} ;
	
	var wenhuachengdu = $("#wenhuachengdu").val();
	if(wenhuachengdu == null || wenhuachengdu == undefined || wenhuachengdu == ""){
	　　　　alert("文化程度不能为空！");
	　　　　return false;
	　　} ;
	
	var hujidizhi = $("#hujidizhi").val();
	if(hujidizhi == null || hujidizhi == undefined || hujidizhi == ""){
	　　　　alert("户籍地址不能为空！");
	　　　　return false;
	　　} ;
	
	var xianzhuzhi = $("#xianzhuzhi").val();
	if(xianzhuzhi == null || xianzhuzhi == undefined || xianzhuzhi == ""){
	　　　　alert("现住址不能为空！");
	　　　　return false;
	　　} ; 
	
	var grjksm_shili = $("#grjksm_shili").val();
	if(grjksm_shili == null || grjksm_shili == undefined || grjksm_shili == ""){
	　　　　alert("视力情况不能为空！");
	　　　　return false;
	　　};
	
	
	var grjksm_tingli = $("#grjksm_tingli").val();
	if(grjksm_tingli == null || grjksm_tingli == undefined || grjksm_tingli == ""){
	　　　　alert("听力情况不能为空！");
	　　　　return false;
	　　};
	
	
		return true;   
		 
		
		
		
};
	
</script>

<!-- 添加成功弹出框 -->
<script type="text/javascript">

function Success(){
	var a= document.getElementById("success").value;
	if(a=="success"){
		alert("添加成功");
	}else if ((a=="false")){
		alert("添加失败，请输入正确的信息");
	}
	//document.getElementById("success").value = "";
	
};
//页面加载后马上加载函数
window.onload = Success;

</script>


<!--  <script type="text/javascript">
//违法记录选无  
function weifaClick(){
	var a = document.getElementById("weifajilu").checked;
	 if(a == true){
		document.getElementById("weifajilu1").value= "无";
	}else{
		document.getElementById("weifajilu1").value= "";
	} 
}
 </script>
  -->
 
 
 
 
 

</body>