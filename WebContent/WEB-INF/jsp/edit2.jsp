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
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>添加订单</title>
	<!-- <link href="http://www.jq22.com/jquery/bootstrap-3.3.4.css" rel="stylesheet">
	 --> <link href="css/bootstrap-3.3.4.css" rel="stylesheet">
	 
	 
	 <!-- 日期 -->
	  <link href="js/date/date.css" rel="stylesheet">
	 
</head>
<body>
	 
	<div class="jq22-container" style="text-align: center;">
 

    <h3>候选人（新员工）信息登记表</h3><br/>
    <form class="form-inline" action="${pageContext.request.contextPath }/editXinXiBiao.action"  id ="form1" method="post" onsubmit="return check()">
    
    <c:forEach items="${xinXiBiao}" var="row">
     
     
      	<div class="form-group">
        姓&nbsp;&nbsp;&nbsp;&nbsp;名：&nbsp;&nbsp;&nbsp;<input type = "text" id="name" name = "name" value="${row.name}" class="form-control"  placeholder="请输入您的名字" ><span style="color: red;font-size: 16px">*</span>
        </div>
        <br/>
         <div class="form-group">
        应聘职位： <input type = "text" id="yingpingzhiwei" name = "yingpingzhiwei" value="${row.yingpingzhiwei}" class="form-control"  placeholder="请输入应聘职位" ><span style="color: red;font-size: 16px">*</span>
         </div>
         <br/>
        
         <div class="form-group">
         出生年月： <input type = "text" id="chushengnianyue" name = "chushengnianyue" value="${row.chushengnianyue}" class="form-control" placeholder="请输入您的出生年月" >
        <span style="color: red;font-size: 16px">*</span> </div>
         <br/>
          
                性&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;&nbsp;&nbsp; ：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <div class="form-group">
					<select class="form-control" id="sex" name="sex">
						  <option value="${row.sex}">${row.sex}</option>  
									<option value="男">男</option>
									<option value="女">女</option>
					</select>
			<span style="color: red;font-size: 16px">*</span>	</div>
          <br/>
          
          
          
          <div class="form-group">
         民&nbsp;&nbsp;&nbsp;&nbsp;族：&nbsp;&nbsp;&nbsp; <input type = "text" id="minzu" name = "minzu" value="${row.minzu}" class="form-control" placeholder="" >
        <span style="color: red;font-size: 16px">*</span> </div>
          <br/>
          <div class="form-group">
        身&nbsp;&nbsp;&nbsp;&nbsp;高：&nbsp;&nbsp;&nbsp; <input type = "text" id="shengao" name = "shengao" value="${row.shengao}" class="form-control" placeholder="" > 
         </div> 
          <br/>
          <div class="form-group">
        体&nbsp;&nbsp;&nbsp;&nbsp;重：&nbsp;&nbsp;&nbsp; <input type = "text" id="tizhong" name = "tizhong" value="${row.tizhong}" class="form-control" placeholder="" >
         </div>
          <br/>
		  
   <div id="distpicker5" class="form-group">
       籍&nbsp;&nbsp;&nbsp;&nbsp;贯：&nbsp;&nbsp;&nbsp;  
        <div  class="form-group">
        <input type = "text" id="province10" name = "province10" value="${row.province10}" class="form-control" placeholder="" >
       <span style="color: red;font-size: 16px">*</span> <br/>

   </div>
          <br/>
          <div class="form-group">
       政治面貌： <input type = "text" id="zhengzhimianmao" name = "zhengzhimianmao" value="${row.zhengzhimianmao}" class="form-control" placeholder="" >
        <span style="color: red;font-size: 16px">*</span> </div>
          <br/>
      婚姻状况： <div class="form-group">
					<select class="form-control" id="hunyinzhuangkuang" name="hunyinzhuangkuang" value="${row.hunyinzhuangkuang}">
						  <option value="${row.hunyinzhuangkuang}">${row.hunyinzhuangkuang}</option>  
									<option value="已婚">已婚</option>
									<option value="未婚">未婚</option>
					</select>
			<span style="color: red;font-size: 16px">*</span>	</div>
          <br/>
          <div class="form-group">
      手机号码：  <input type = "text" id="shoujihaoma" name = "shoujihaoma" value="${row.shoujihaoma}" class="form-control" placeholder="" >
        <span style="color: red;font-size: 16px">*</span> </div>
          <br/>
          <div class="form-group">
      微信号：  <input type = "text" id="weixinhao" name = "weixinhao" value="${row.weixinhao}" class="form-control" placeholder="" >
         </div>
         <br/>
          <div class="form-group">
      电子邮件：  <input type = "text" id="emall" name = "emall" value="${row.emall}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
       入党/团时间： 
       <input id="rudangshijian" name = "rudangshijian" value="${row.rudangshijian}" type="text"  class="form-control">
 
         </div>
          <br/>
     户口性质：&nbsp;&nbsp;&nbsp;&nbsp;<div class="form-group">
					<select class="form-control" id="hukouxingzhi"
						name="hukouxingzhi" value="${row.hukouxingzhi}">
						  <option value="">${row.hukouxingzhi}</option>  
									<option value="（广州）本地城镇">（广州）本地城镇</option>
									<option value="（广州）本地农村">（广州）本地农村</option>
									<option value="外地城镇">外地城镇</option>
									<option value="外地农村">外地农村</option>
									
								
					</select>
			<span style="color: red;font-size: 16px">*</span>	</div>
          <br/>
        文化程度：&nbsp;&nbsp;&nbsp;&nbsp;<div class="form-group">
					<select class="form-control" id="wenhuachengdu"
						name="wenhuachengdu">
						  <option value="${row.wenhuachengdu}">${row.wenhuachengdu}</option>  
						 	 <option value="硕士研究生及以上">硕士研究生及以上</option>
									<option value="大学本科">大学本科</option>
									<option value="大学专科">大学专科</option>
									<option value="中专">中专</option>
									<option value="高中及以下">高中及以下</option>
					</select>
			<span style="color: red;font-size: 16px">*</span>	</div>
          <br/>
         <div class="form-group">
      户籍地址：<input type = "text" id="hujidizhi" name = "hujidizhi" value="${row.hujidizhi}" class="form-control" placeholder="" >
     <span style="color: red;font-size: 16px">*</span>    </div>
          <br/>
        <div class="form-group">
    现居地：&nbsp;&nbsp;&nbsp;&nbsp;    <input type = "text" id="xianzhuzhi" name = "xianzhuzhi" value="${row.xianzhuzhi}" class="form-control" placeholder="" >
   <span style="color: red;font-size: 16px">*</span>      </div>
          <br/><br/>  
       <div  >紧急联系人1</div>
          <br/> 
          <div class="form-group">
       姓&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;   <input type = "text" id="jjlxr_xingming"  name = "jjlxr_xingming" value="${row.jjlxr_xingming}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
      与本人关系:    <input type = "text" id="jjlxr_yubenrenguanxi" name = "jjlxr_yubenrenguanxi" value="${row.jjlxr_yubenrenguanxi}" class="form-control" placeholder="" >
         </div>
          <br/>
          
          <div class="form-group">
        联系电话:   <input type = "text" id="jjlxr_dianhua" name = "jjlxr_dianhua" value="${row.jjlxr_dianhua}" class="form-control" placeholder="" >
         </div>
          <br/>
		   
		  
		  
		  
		  
		  <div class="form-group">
        办公软件:  <input type = "checkbox" id="jsjsp_bangongruanjian1" name = "jsjsp_bangongruanjian1" value="${row.jsjsp_bangongruanjian1}" class="form-control" placeholder="" >Word&nbsp;
		  <input type = "checkbox" id="jsjsp_bangongruanjian2" name = "jsjsp_bangongruanjian2" value="${row.jsjsp_bangongruanjian2}" class="form-control" placeholder="" >Excel&nbsp;
		  <input type = "checkbox" id="jsjsp_bangongruanjian3" name = "jsjsp_bangongruanjian3" value="${row.jsjsp_bangongruanjian3}" class="form-control" placeholder="" >PPT&nbsp;
		 其他: <span><input type = "text" id="jsjsp_bangongruanjian4" name = "jsjsp_bangongruanjian4" value="${row.jsjsp_bangongruanjian4}" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /></span>
         </div>
         <br />
		 
		 
		 <div class="form-group">
		 制图软件:  <input type = "checkbox" id="jsjsp_huitugongju1" name = "jsjsp_huitugongju1" value="${row.jsjsp_huitugongju1}" class="form-control" placeholder="" >CAD&nbsp;
		   <input type = "checkbox" id="jsjsp_huitugongju2" name = "jsjsp_huitugongju2" value="${row.jsjsp_huitugongju2}" class="form-control" placeholder="" >Photoshop&nbsp;
		   
		  其他: <span><input type = "text" id="jsjsp_qita" name = "jsjsp_qita" value="${row.jsjsp_qita}" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /></span>
		  </div>
		 <br />
		  
		 
		 <div class="form-group">
		 语言能力:  <input type = "checkbox" id="yuyannengli1" name = "yuyannengli1" value="${row.yuyannengli1}" class="form-control" placeholder="" >普通话
		   <input type = "checkbox" id="yuyannengli2" name = "yuyannengli2" value="${row.yuyannengli2}" class="form-control" placeholder="" >粤话
		 &nbsp; 其他: <span><input type = "text" id="yuyannengli3" name = "yuyannengli3" value="${row.yuyannengli3}" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /></span>
		  </div>
		 <br />
		 
		 
		 <div class="form-group">
		 有效驾照:  
		 &nbsp; 持有 <span><input type = "text" id="jiazhao1" name = "jiazhao1" value="${row.jiazhao1}" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />驾照
		 &nbsp;&nbsp;<input type = "checkbox" id="jiazhao2" name = "jiazhao2" value="${row.jiazhao2}" class="form-control" placeholder="" >&nbsp;无
		  </div>
		  <br/>
		  
		  <div class="form-group">
		  违法记录:  
		  <input type = "checkbox" id="weifajilu1" name = "weifajilu1" value="${row.weifajilu1}" class="form-control" placeholder="" >&nbsp;无
		   &nbsp;&nbsp;<input type = "checkbox" id="weifajilu2" name = "weifajilu2" value="${row.weifajilu2}" class="form-control" 
		   placeholder="" >&nbsp;有 <input type = "text" id="weifajilu3" name = "weifajilu3" value="${row.weifajilu3}"
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		    
		 <span style="color: red;font-size: 16px">*</span> </div>
		  
		   <br/><br/>
		   
		  <div  >爱好与特长</div>
		  <br/>
		  
          <div class="form-group">
          1.运动类：<input type = "text" id="ahytc_yundonglei" name = "ahytc_yundonglei" value="${row.ahytc_yundonglei}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
          2.文艺类：<input type = "text" id="ahytc_wenyilei" name = "ahytc_wenyilei" value="${row.ahytc_wenyilei}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
          3.其&nbsp;&nbsp;&nbsp;他：<input type = "text" id="ahytc_qita1" name = "ahytc_qita1" value="${row.ahytc_qita1}" class="form-control" placeholder="" >
         </div>
          <br/>
		  <br/>
		  
		  <div>职业资格证书</div>
		  <br/>
		  
          <div class="form-group">
         1.医药类：<input type = "text" id="zyzgzs_yiyaolei" name = "zyzgzs_yiyaolei" value="${row.zyzgzs_yiyaolei}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
          2.财务类：<input type = "text" id="zyzgzs_caiwulei" name = "zyzgzs_caiwulei" value="${row.zyzgzs_caiwulei}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
          3.语言类：<input type = "text" id="zyzgzs_yuyanlei" name = "zyzgzs_yuyanlei" value="${row.zyzgzs_yuyanlei}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
         4.其&nbsp;&nbsp;&nbsp;他： <input type = "text" id="zyzgzs_qita" name = "zyzgzs_qita" value="${row.zyzgzs_qita}" class="form-control" placeholder="" >
         </div>
          <br/>
		  <br/>
		  
		  
		  
		  <div>教育背景1</div>
		  
		  <br/><br/>
          <div class="form-group">
         (1) 起止时间： <input type = "text" id="jybj_qizhishijian1" name = "jybj_qizhishijian1" value="${row.jybj_qizhishijian1}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
         (2) 在何校学习/进修：<input type = "text" id="jybj_zaiheyuanxiaoxuexi1" name = "jybj_zaiheyuanxiaoxuexi1" value="${row.jybj_zaiheyuanxiaoxuexi1}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
         (3) 专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;: <input type = "text" id="jybj_zhuanye1" name = "jybj_zhuanye1" value="${row.jybj_zhuanye1}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
          (4) 就读方式：<input type = "text" id="jybj_jiudufangshi1" name = "jybj_jiudufangshi1" value="${row.jybj_jiudufangshi1}" class="form-control" placeholder="" >
         </div>
          <br/>
          <div class="form-group">
          (5) 学历/证书：<input type = "text" id="jybj_xuelizhengshu1" name = "jybj_xuelizhengshu1" value="${row.jybj_xuelizhengshu1}" class="form-control" placeholder="" >
         </div>
          <br/><br/>
		  
		  <div>教育背景2</div>
		   
		   <br/>
		   <div class="form-group">
		  (1) 起止时间：<input type = "text" id="jybj_qizhishijian2" name = "jybj_qizhishijian2" value="${row.jybj_qizhishijian2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (2) 在何校学习/进修：<input type = "text" id="jybj_zaiheyuanxiaoxuexi2" name = "jybj_zaiheyuanxiaoxuexi2" value="${row.jybj_zaiheyuanxiaoxuexi2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (3) 专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;: <input type = "text" id="jybj_zhuanye2" name = "jybj_zhuanye2" value="${row.jybj_zhuanye2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (4) 就读方式：<input type = "text" id="jybj_jiudufangshi2" name = "jybj_jiudufangshi2" value="${row.jybj_jiudufangshi2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (5) 学历/证书：<input type = "text" id="jybj_xuelizhengshu2" name = "jybj_xuelizhengshu2" value="${row.jybj_xuelizhengshu2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <br/>
		   
		  <div>教育背景3</div>
		   
		   <br/>
		   <div class="form-group">
		  (1) 起止时间：<input type = "text" id="jybj_qizhishijian3" name = "jybj_qizhishijian3" value="${row.jybj_qizhishijian3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (2) 在何校学习/进修：<input type = "text" id="jybj_zaiheyuanxiaoxuexi3" name = "jybj_zaiheyuanxiaoxuexi3" value="${row.jybj_zaiheyuanxiaoxuexi3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (3) 专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;: <input type = "text" id="jybj_zhuanye3" name = "jybj_zhuanye3" value="${row.jybj_zhuanye3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (4) 就读方式：<input type = "text" id="jybj_jiudufangshi3" name = "jybj_jiudufangshi3" value="${row.jybj_jiudufangshi3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (5) 学历/证书<input type = "text" id="jybj_xuelizhengshu3" name = "jybj_xuelizhengshu3" value="${row.jybj_xuelizhengshu3}" class="form-control" placeholder="" >
		  </div>
		   <br/> 
		   <br />
		   
		  <div>任职经历1</div>
		  <br/>
		  <div class="form-group">
		  (1) 起止时间：<input type = "text" id="rzjl_qizhishijian1" name = "rzjl_qizhishijian1" value="${row.rzjl_qizhishijian1}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (2) 工作单位：<input type = "text" id="rzjl_gongzuodanwei1" name = "rzjl_gongzuodanwei1" value="${row.rzjl_gongzuodanwei1}"  class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (3) 职&nbsp;&nbsp;&nbsp;&nbsp;务&nbsp;&nbsp;&nbsp;&nbsp;：<input type = "text" id="rzjl_zhiwu1" name = "rzjl_zhiwu1" value="${row.rzjl_zhiwu1}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (4) 离职原因：<input type = "text" id="rzjl_lizhiyuanyin1" name = "rzjl_lizhiyuanyin1" value="${row.rzjl_lizhiyuanyin1}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (5) 证明人及联系方式：<input type = "text" id="rzjl_zmr_lxfs1" name = "rzjl_zmr_lxfs1" value="${row.rzjl_zmr_lxfs1}" class="form-control" placeholder="" >
		  </div>
		  <br/><br/>
		  <div>任职经历2</div>
		  <br/>
		  <div class="form-group">
		  (1) 起止时间：<input type = "text" id="rzjl_qizhishijian2" name = "rzjl_qizhishijian2" value="${row.rzjl_qizhishijian2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (2) 工作单位：<input type = "text" id="rzjl_gongzuodanwei2" name = "rzjl_gongzuodanwei2" value="${row.rzjl_gongzuodanwei2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (3) 职&nbsp;&nbsp;&nbsp;&nbsp;务&nbsp;&nbsp;&nbsp;&nbsp;：<input type = "text" id="rzjl_zhiwu2" name = "rzjl_zhiwu2" value="${row.rzjl_zhiwu2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (4) 离职原因：<input type = "text" id="rzjl_lizhiyuanyin2" name = "rzjl_lizhiyuanyin2" value="${row.rzjl_lizhiyuanyin2}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (5) 证明人及联系方式：<input type = "text" id="rzjl_zmr_lxfs2" name = "rzjl_zmr_lxfs2" value="${row.rzjl_zmr_lxfs2}" class="form-control" placeholder="" >
		  </div>
		  
		  <br/><br/>
		  <div>任职经历3</div>
		  <br/>
		  <div class="form-group">
		  (1) 起止时间：<input type = "text" id="rzjl_qizhishijian3" name = "rzjl_qizhishijian3" value="${row.rzjl_qizhishijian3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (2) 工作单位：<input type = "text" id="rzjl_gongzuodanwei3" name = "rzjl_gongzuodanwei3" value="${row.rzjl_gongzuodanwei3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (3) 职&nbsp;&nbsp;&nbsp;&nbsp;务&nbsp;&nbsp;&nbsp;&nbsp;：<input type = "text" id="rzjl_zhiwu3" name = "rzjl_zhiwu3" value="${row.rzjl_zhiwu3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (4) 离职原因：<input type = "text" id="rzjl_lizhiyuanyin3" name = "rzjl_lizhiyuanyin3" value="${row.rzjl_lizhiyuanyin3}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (5) 证明人及联系方式：<input type = "text" id="rzjl_zmr_lxfs3" name = "rzjl_zmr_lxfs3" value="${row.rzjl_zmr_lxfs3}" class="form-control" placeholder="" >
		  </div>
		  
		  
		  
		  <br/><br/>
		  <div>家庭成员1</div>
		  <br/>
		  <div class="form-group">
		 (1) 姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;：<input type = "text" id="jtcy_xingming1" name = "jtcy_xingming1" value="${row.jtcy_xingming1}" class="form-control" placeholder="${row.jtcy_xingming1}" >
		  </div>
		   <br/>
		   <div class="form-group">
		 (2) 与本人关系：<input type = "text" id="jtcy_yubenrenguanxi1" name = "jtcy_yubenrenguanxi1" value="${row.jtcy_yubenrenguanxi1}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		  (3) 出生年月：<input type = "text" id="jtcy_chushengnianyue1" name = "jtcy_chushengnianyue1" value="${row.jtcy_chushengnianyue1}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (4) 从事职业：<input type = "text" id="jtcy_congshizhiye1" name = "jtcy_congshizhiye1" value="${row.jtcy_congshizhiye1}" class="form-control" placeholder="" >
		  </div>
		   <br/>
		   <div class="form-group">
		   (5)&nbsp;&nbsp;&nbsp;&nbsp;居住地：<input type = "text" id="jtcy_juzhudi1" name = "jtcy_juzhudi1" value="${row.jtcy_juzhudi1}" class="form-control" placeholder="" >
		  </div>
		  
		   <br/><br/>
		    <div>家庭成员2</div>
		    <br/>
		    <div class="form-group">
		   (1) 姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;：<input type = "text" id="jtcy_xingming2" name = "jtcy_xingming2" value="${row.jtcy_xingming2}" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		   (2) 与本人关系：<input type = "text" id="jtcy_yubenrenguanxi2" name = "jtcy_yubenrenguanxi2" value="${row.jtcy_yubenrenguanxi2}" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		    (3) 出生年月：<input type = "text" id="jtcy_chushengnianyue2" name = "jtcy_chushengnianyue2" value="${row.jtcy_chushengnianyue2}" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		     (4) 从事职业：<input type = "text" id="jtcy_congshizhiye2" name = "jtcy_congshizhiye2" value="${row.jtcy_congshizhiye2}" class="form-control" placeholder="" >
		    </div>
		     <br/>
		     <div class="form-group">
		     (5)&nbsp;&nbsp;&nbsp;&nbsp;居住地：<input type = "text" id="jtcy_juzhudi2" name = "jtcy_juzhudi2" value="${row.jtcy_juzhudi2}" class="form-control" placeholder="" >
		    </div>
			
			<br/><br/>
			 <div>家庭成员3</div>
			 <br/>
			 <div class="form-group">
			(1) 姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;：<input type = "text" id="jtcy_xingming3" name = "jtcy_xingming3" value="${row.jtcy_xingming3}" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			(2) 与本人关系：<input type = "text" id="jtcy_yubenrenguanxi3" name = "jtcy_yubenrenguanxi3" value="${row.jtcy_yubenrenguanxi3}" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			 (3) 出生年月：<input type = "text" id="jtcy_chushengnianyue3" name = "jtcy_chushengnianyue3" value="${row.jtcy_chushengnianyue3}" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			  (4) 从事职业：<input type = "text" id="jtcy_congshizhiye3" name = "jtcy_congshizhiye3" value="${row.jtcy_congshizhiye3}" class="form-control" placeholder="" >
			 </div>
			  <br/>
			  <div class="form-group">
			  (5)&nbsp;&nbsp;&nbsp;&nbsp;居住地：<input type = "text" id="jtcy_juzhudi3" name = "jtcy_juzhudi3" value="${row.jtcy_juzhudi3}" class="form-control" placeholder="" >
			 </div>
		  
		  
		  
		  
		  
		  
		  
		  <br /><br />
		  <div>个人健康状况</div>
		  <br />
          <div class="form-group">
          视力情况：<select class="form-control" id="grjksm_shili"
						name="grjksm_shili">
						  <option value="${row.grjksm_shili}">${row.grjksm_shili}</option>  
									<option value="良好">良好</option>
									<option value="辅助">辅助</option>
					</select>
       <span style="color: red;font-size: 16px">*</span>  </div>
          <br/>
          <div class="form-group">
          听力情况：<select class="form-control" id="grjksm_tingli"
						name="grjksm_tingli">
						  <option value="${row.grjksm_tingli}">${row.grjksm_tingli}</option>  
									<option value="良好">良好</option>
									<option value="辅助">辅助</option>
					</select>
  <span style="color: red;font-size: 16px">*</span>       </div>
          <br/>
		 <div class="form-group">
          血&nbsp;&nbsp;&nbsp;&nbsp;型&nbsp;&nbsp;&nbsp;&nbsp;：<input type = "text" id="grjksm_xuexing" name = "grjksm_xuexing" class="form-control" placeholder="" >
         </div>
          <br/>
		  <div class="form-group">
		  是否患有遗传性疾病、精神类或传染性疾病？：<input type = "checkbox" id="grjksm_jibing" name = "grjksm_jibing" value="无" class="form-control" placeholder="" >&nbsp;无
		  </div>
	 &nbsp;&nbsp;&nbsp;
		  <div class="form-group">
		  有，请说明：  <input type = "text" id="grjksm_jibing" name = "qita_zgsrz_mingcheng" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		  </div>
		  <br/>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          <br/>
		  <div>其 他</div>
           <br/>
			 <div class="form-group">
		是否与本集团在职员工存在亲属关系？  
		  <input type = "checkbox" id="qita_jituanqinshu" name = "qita_jituanqinshu" value="无" class="form-control" placeholder="" >&nbsp;无
		   &nbsp;&nbsp;
		   有 请填下面信息
		  <br/>亲属员工1姓名<input type = "text" id="qita_jituanqinshu1" name = "qita_jituanqinshu1"  style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		   与本人关系<input type = "text" id="qita_yubenrenguanxi1" name = "qita_yubenrenguanxi1" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /><br/>
		  亲属员工2姓名 <input type = "text" id="qita_jituanqinshu2" name = "qita_jituanqinshu2" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		   与本人关系<input type = "text" id="qita_yubenrenguanxi2" name = "qita_yubenrenguanxi2" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" /><br/>
		 亲属员工3姓名 <input type = "text" id="qita_jituanqinshu3" name = "qita_jituanqinshu3" style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		  与本人关系 <input type = "text" id="qita_yubenrenguanxi3" name = "qita_yubenrenguanxi3"  style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		    
		  </div>
         
         
         
         <br/>
          <br/>
		  <div class="form-group">
		  是否曾在本集团/相关子公司任职？<input type = "checkbox" id="qita_zigongsirenzhi" name = "qita_zigongsirenzhi" value="无" class="form-control" placeholder="" >&nbsp;无
		  </div>
	 &nbsp;&nbsp;&nbsp;
		  <div class="form-group">
		   
		有， 任职子公司名称是：  <input type = "text" id="qita_zgsrz_mingcheng" name = "qita_zgsrz_mingcheng" 
		   style="border: 1px solid #ccc;border-radius: 4px;" class="" placeholder="" />
		  </div>
		  <br/>
           
        
    <br/>
     
 
 </c:forEach>
 
 
  <br/>
 
  <br/>
      
      <input type = "submit"   class="form-control" value="提交">
      <br/>
      <br/>
      <br/>
      <br/>
    </form>
 		</div>
		
 
	
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

<!-- 登录校验 -->


 
 

</body>