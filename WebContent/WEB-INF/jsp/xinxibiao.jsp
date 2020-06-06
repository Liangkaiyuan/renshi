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
<html>
<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
<c:forEach items="${xinXiBiao}" var="row">
		<div class="Section0" style="text-align: center;">
			<span style="position:absolute;z-index:-1;left:0px;
		 margin-top:0px;width:189.0000px;
		height:49.0000px;">
				<!-- 大翔logo -->
				<img width="189" height="49" src="image/a.png">

			</span>
			<br />

			<!-- 照片logo -->
			<!-- <span style="position:absolute;z-index:-1;left:0px;
							margin-
left:1100px;margin-top:20px;width:101.0000px;
							height:118.0000px;">
							<img width="101" 
height="118" src="image/b.png"> 
							</span> -->

			<br />
			<b>
				<font face="宋体" style="font-size:25pt;">候选人（新员工） 信息登记表
				</font>
			</b>

		</div>








		<br />


		<!-- ------------------------------------------- -->

		<p class=MsoNormal style="  margin-top:15.6000pt;mso-para-margin-
top:1.0000gd;text-align:left;"><b><span style="mso-spacerun:'yes';font-family:
宋体;font-weight:bold;
  font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<font face="宋体" size="5">一、
						个人基本情况 </font> (出现□的栏目，请在□处进行 “√”选择)
				</span></b>
				
				
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="mso-spacerun:'yes';font-family:
宋体;font-weight:bold;
  font-size:14.0000pt;mso-font-kerning:1.0000pt;">
				<font face="宋体" size="5">应聘职位：</font>
			</span><span style="mso-spacerun:'yes';font-family:
宋体;font-weight:bold;
  font-size:14.0000pt;mso-font-kerning:1.0000pt;">
				<font face="宋体" size="4"><u>${row.yingpingzhiwei}</u></font>
			</span></p>






		<table class=MsoNormalTable border=1 cellspacing=0 style=" 
text-align: center;" align="center">

			<tr style="height:45pt;">
				<td width="160px;" valign=center>
					<b>
						<font face="宋体" size="5">姓名
						</font>
					</b>
				</td>

				<td width="120px;" valign=center colspan=2>
				${row.name}
				</td>
				<td width="160px;" valign=center>
					<b>
						<font face="宋体" size="5">出生年月
					</b>
				</td>
				<td width="120px;" valign=center colspan=2>
					${row.chushengnianyue}
				</td>
				<td width="160px;" valign=center style="font-
family:宋体;">
					<b>
						<font face="宋体" size="5"> 性别
					</b>
				</td>
				<td width="120px;" valign=center>
				${row.sex}
				</td>
				<td width="160px;" valign=center>
					<b>
						<font face="宋体" size="5"> 民族
					</b>
				</td>
				<td width="107px;" valign=center>
					${row.minzu}
				</td>
			</tr>













			<tr style="height:45pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5">身高
					</b>
				</td>
				<td width=133 valign=center colspan=2>
					${row.shengao}&nbsp;cm
				</td>
				<td width=107 valign=center>
					<b>
						<font face="宋体" size="5"> 体&nbsp;
							重
					</b>
				</td>
				<td width=171 valign=center colspan=2>
					${row.tizhong}&nbsp;kg
				</td>
				<td width=103 valign=center>
					<b>
						<font face="宋体" size="5">籍&nbsp;
							贯
					</b>
				</td>
				<td width=298 valign=center colspan=3>
					${row.province10}
				</td>
			</tr>












			<tr style="height:45pt; text-align: center;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5"> 政治面貌</font>
					</b>
				</td>
				<td width=133 valign=center colspan=2>
				${row.zhengzhimianmao}
				</td>
				<td width=107 valign=center>
					<b>
						<font face="宋体" size="5">婚姻状况</font>
					</b>
				</td>
				<td width=171 valign=center colspan=2>
					<input type="checkbox" id = "hunyinzhuangkuang1" name = "hunyinzhuangkuang1" value="${Hunyinzhuangkuang}" />未婚
					<input type="checkbox" id = "hunyinzhuangkuang2" name = "hunyinzhuangkuang2" value="" />已婚
				</td>
				<td width=103 valign=center>
					<b>
						<font face="宋体" size="5">手机号码
					</b>
				</td>
				<td width=298 valign=center colspan=3>
					${row.shoujihaoma}
				</td>
			</tr>













			<tr style="height:45pt;">
				<td width=190 valign=center>
					<b>
						<font face="宋体" size="4">入党/团时间
					</b>
				</td>
				<td width=133 valign=center colspan=2>
					${row.rudangshijian}
				</td>
				<td width=107 valign=center>
					<b>
						<font face="宋体" size="5">微信号
					</b>
				</td>
				<td width=171 valign=center colspan=2>
				${row.weixinhao}
				</td>
				<td width=103 valign=center>
					<b>
						<font face="宋体" size="5"> 电子邮箱
					</b>
				</td>
				<td width=298 valign=center colspan=3>
				${row.emall}
				</td>
			</tr>











			<tr style="height:45pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5"> 户口性质</font>
					</b>
				</td>
				<td width=814 style="text-align: left;" colspan=9>
					<input type="checkbox" id = "hukouxingzhi" name = "hukouxingzhi" value="${hukouxingzhi}" />&nbsp;<b>（广州）本地城镇

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id = "hukouxingzhi1" name = "hukouxingzhi1" value="" />&nbsp;<b>（广州）本地农村
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id = "hukouxingzhi2" name = "" value="" />&nbsp;&nbsp;<b>外地城镇

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" id = "hukouxingzhi3" name = "" value="" />&nbsp;&nbsp;<b>外地农村
				</td>
			</tr>





			<tr style="height:45pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5">文化程度
					</b>
				</td>
				<td width=814 style="text-align: left;" colspan=9>
					<input type="checkbox" id = "wenhuachengdu1" name = "" value="${wenhuachengdu}" />&nbsp;&nbsp;<b>硕士研究生及以上
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="checkbox" id = "wenhuachengdu2" name = "" value="" />&nbsp;&nbsp;<b>大学本科 &nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" id = "wenhuachengdu3" name = "" value="" />&nbsp;&nbsp;<b>大学专科 &nbsp;&nbsp;&nbsp; 
					<input type="checkbox" id = "wenhuachengdu4" name = "" value="" />&nbsp;&nbsp;<b>中专
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;
					&nbsp;
					<input type="checkbox" id = "wenhuachengdu5" name = "" value="" />&nbsp;&nbsp;<b>高中及以下
				</td>
			</tr>







			<tr style="height:40pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5">户籍地址
					</b>
				</td>
				<td width=814 valign=center colspan=9>
				${row.hujidizhi}
				</td>
			</tr>
			<tr style="height:40pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5"> 现住址
					</b>
				</td>
				<td width=814 valign=center colspan=9>
				${row.xianzhuzhi}
				</td>
			</tr>









			<tr style="height:40pt;">
				<td width="100px;" valign=center rowspan=3>
					<b>
						<font face="宋体" size="5">紧 急<br /> 联系人
					</b>
				</td>
				<td width="180px" valign=center>
					<b>
						<font face="宋体" size="4">与本人关系</font>
					</b>
				</td>
				<td width=191 valign=center colspan=3>
				${row.jjlxr_yubenrenguanxi}
				</td>
				<td width="200px" valign=center rowspan=3>
					<b>
						<font face="宋体" size="5">计算机<br/>水平</font>
					</b>
				</td>
				<td width="60px;" valign=center>
					<b>
						<font face="宋体" size="5">办公软件</font>
					</b>
				</td>
				<td style="width: 60px;" valign=center colspan=3>
					<input type="checkbox" id = "Word" name = "" value="${Word}" />Word
					<input type="checkbox" id = "Excel" name = "" value="${Excel}" />Excel 
					<input type="checkbox" id = "PPT" name = "" value="${PPT}" />PPT
					&nbsp;&nbsp;&nbsp;其他：<u>${qita}</u>&nbsp; 

				</td>
			</tr>
			<tr style="height:40pt;">
				<td width="180px" valign=center>
					<b>
						<font face="宋体" size="5"> 姓名</font>
					</b>
				</td>
				<td width=191 valign=center colspan=3>
					${row.jjlxr_xingming}
				</td>
				<td width=103 valign=center>
					<b>
						<font face="宋体" size="5"> 制图软件</font>
					</b>
				</td>
				<td width=298 valign=center colspan=3>
					<input type="checkbox" id = "CAD" name = "" value="${CAD}" />CAD 
					<input type="checkbox" id = "Photoshop" name = "" value="${Photoshop}" />Photoshop
					&nbsp;&nbsp;其他：<u>${ht_qita}</u>
				</td>
			</tr>
			<tr style="height:40pt;">
				<td width="180px" valign=center>
					<b>
						<font face="宋体" size="5">联系电话</font>
					</b>
				</td>
				<td width=191 valign=center colspan=3>
				${row.jjlxr_dianhua}
				</td>
				<td width=103 valign=center>
					<b>
						<font face="宋体" size="5">其他</font>
					</b>
				</td>
				<td width=298 valign=center colspan=3>
  ${row.jsjsp_qita}
				</td>
			</tr>
			<tr style="height:40pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5"> 语言能力</font>
					</b>
				</td>
				<td width=303 valign=center colspan=4>
					<b><input type="checkbox" id = "putonghua" name = "" value="${putonghua}" />普通话
					<input type="checkbox" id = "yuhua" name = "" value="${yuhua}" />粤话<!--  <input type="checkbox" id = "" name = "" value="" /> --> 
					&nbsp;&nbsp;其他：</b><u>${yy_qita}</u>
				</td>
				<td width="200px;" height="110px;" valign=center rowspan=3>
					<b>
						<font face="宋体" size="5">爱好与<br/>特长</font>
					</b>
				</td>
				<td width=401 style="text-align: left;" valign=center colspan=4 rowspan=3>
					<b>1.运动类：</b> <U>${row.ahytc_yundonglei}</U>
					<br />
					<br />
					<b>2.文艺类：</b><U>${row.ahytc_wenyilei}</U>
					<br />
					<br/>
					<b>3.其他：</b><U>${row.ahytc_qita1}</U>&nbsp;<!-- <input type="checkbox" id = "" name = "" value="" />写作 &nbsp;&nbsp;&nbsp;
					<input type="checkbox" id = "" name = "" value="" />主持  -->
							
				</td>
			</tr>




			<tr style="height:40pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5">有效驾照 </font>
					</b>
				</td>
				<td width=303 valign=center colspan=4>
					<b> 持有 &nbsp;&nbsp;&nbsp;<U>${row.jiazhao1}</U>&nbsp;&nbsp; 驾照 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="checkbox" id = "Jiazhao2" name = "" value="${Jiazhao2}" />无
 </b>
				</td>
			</tr>
			<tr style="height:40pt;">
				<td width=100 valign=center>
					<b>
						<font face="宋体" size="5"> 违法记录
					</b>
				</td>
				<td width=303 valign=center colspan=4>
					<b> <input type="checkbox" id = "weifajilu1" name = "" value="${weifajilu1}" />无
					<input type="checkbox" id = "weifajilu3" name = "" value="${weifajilu3}" />有</b>
					&nbsp;&nbsp;&nbsp;说明：<u> ${row.weifajilu3}</u>
				</td>
			</tr>





			<tr style="height:80pt;">
				<td width=100 valign=center>
				<br/>
					<b>
						<font face="宋体" size="4">职业资格证书 <br/>（无则不填）
					</b>
					<br/><br/>
				</td>
				<td width=814 style="text-align: left;" colspan=9>
					 <font face="宋体" size="3.5">1. 医药类：</font> <U>${row.zyzgzs_yiyaolei}</U>
					 <br />  <br />
					<font face="宋体" size="3.5"> 2. 财务类：</font><U>${row.zyzgzs_caiwulei}</U> 
					 <br />  <br />
					 <font face="宋体" size="3.5">3. 语言类：</font><U>${row.zyzgzs_yuyanlei}</U> 
					 <br />  <br />
					 <font face="宋体" size="3.5">4. 其他：</font><U>${row.zyzgzs_qita}</U>  
				</td>
			</tr>
		</table>



		<!-- --------------------------------------------------                         
 ---教育背景 --------------------------------------------------------->



		<p class=MsoNormal style="  margin-top:15.6000pt;mso-para-
margin-top:1.0000gd;text-align:left;"><b><span style="mso-spacerun:'yes';font-
family:宋体;font-weight:bold;
		font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<font face="宋
体" size="5">二、教育背景</font>
				</span></b><span style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
		mso-hansi-font-family:Calibri;font-size:10.0000pt;mso-font-
kerning:1.0000pt;">
				<font face="宋体">（请
					从最高学历写起，就读方式包括但不限于全日制、函授、网络教育、自考等）</font>
			</span><span style="mso-
spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
		mso-hansi-font-family:Calibri;font-size:10.0000pt;mso-font-
kerning:1.0000pt;">
				<o:p></o:p>
			</span></p>





		<!-- 教育背景 -->




		<div align=center>

			<table class=MsoNormalTable border=1 cellspacing=0 style="text-align: center;">


				<tr style="height:45pt;">
					<td width="243px;" valign=center>
						<b>
							<font face="宋体" size="5">起止时间</font>
						</b>
					</td>
					<td width="243px;" valign=center>
						<b>
							<font face="宋体" size="4">在何院校学习/进修</font>
						</b>
					</td>
					<td width="243px;" valign=center>

						<b>
							<font face="宋体" size="5">专业</font>
						</b>
					</td>
					<td width="243px;" valign=center>

						<b>
							<font face="宋体" size="5">就读方式</font>
						</b>
					</td>
					<td width="243px;" valign=center>
						<b>
							<font face="宋体" size="4">学历/证书</font>
						</b>
							<br>
						（无则不填）
					</td>
				</tr>











				<tr style="height:45pt;">
					<td width=211 valign=center>

							${row.jybj_qizhishijian1}
						<!-- _____<font face="宋体">年</font>

						<font face="Times New Roman">__</font>

						<font face="宋体">月至</font>

						<font face="Times New Roman">_____</font>

						<font face="宋体">年</font>

						<font face="Times New Roman">__</font>

						<font face="宋体">月</font> -->


					</td>
					<td width=236 valign=center>
						${row.jybj_zaiheyuanxiaoxuexi1}
					</td>
					<td width=130 valign=center>
					${row.jybj_zhuanye1}
					</td>
					<td width=153 valign=center>
						${row.jybj_jiudufangshi1}
					</td>
					<td width=186 valign=center>
						${row.jybj_xuelizhengshu1}
					</td>
				</tr>





				<tr style="height:45pt;">
					<td width=211 valign=center>
							${row.jybj_qizhishijian2}
						<!-- _____<font face="宋体">年</font>

						<font face="Times New Roman">__</font>

						<font face="宋体">月至</font>

						<font face="Times New Roman">_____</font>

						<font face="宋体">年</font>

						<font face="Times New Roman">__</font>

						<font face="宋体">月</font> -->


					</td>
					<td width=236 valign=center>
						
						${row.jybj_zaiheyuanxiaoxuexi2}
					</td>
					<td width=130 valign=center>
							${row.jybj_zhuanye2}				
					</td>
					<td width=153 valign=center>
						${row.jybj_jiudufangshi2}
					</td>
					<td width=186 valign=center>
					${row.jybj_xuelizhengshu2}
					</td>
				</tr>


				<tr style="height:45pt;">
					<td width=211 valign=center>
						${row.jybj_qizhishijian3}
					</td>
					<td width=236 valign=center>
						${row.jybj_zaiheyuanxiaoxuexi3}
					</td>
					<td width=130 valign=center>
					${row.jybj_zhuanye3}
					</td>
					<td width=153 valign=center>
							${row.jybj_jiudufangshi3}
					</td>
					<td width=186 valign=center>
						${row.jybj_xuelizhengshu3}
					</td>
				</tr>
			</table>
		</div>













		<!-- --------------------------------------------------------任职经
历------------------------------------------------------------- -->










<br/>
		<p class=MsoNormal><b><span>
					<font face="宋
体" size="5">三、任职经历</font>
				</span></b><span style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
		mso-hansi-font-family:Calibri;font-size:10.0000pt;mso-font-
kerning:1.0000pt;">
				<font face="宋体">（从最近的工作经历开始填）</font>
			</span><b><span style="mso-
spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
		mso-hansi-font-family:Calibri;font-weight:bold;font-
size:10.5000pt;
		mso-font-kerning:1.0000pt;">
					<o:p></o:p>
				</span></b></p>







		<div align=center>
			<table class=MsoNormalTable border=1 cellspacing=0>

				<tr style="height:45pt; 
text-align: center;">
					<td width="243px;" valign=center>

						<b>
							<font face="宋体" size="5"> 起止时间
						</b>
					</td>
					<td width="243px;" valign=center>
						<b>
							<font face="宋体" size="5"> 工作单位
						</b>
					</td>
					<td width="243px;" valign=center>
						<b>
							<font face="宋体" size="5"> 职务
						</b>
					</td>
					<td width="243px;" valign=center>

						<b>
							<font face="宋体" size="5"> 离职原因
						</b>
					</td>
					<td width="243px;" valign=center>

						<b>
							<font face="宋体" size="4"> 证明人及联系方式
						</b>
					</td>
				</tr>









				<tr style="height:45pt; 
text-align: center;">
					<td width=210 valign=center>
					${row.rzjl_qizhishijian1}
					</td>
					<td width=248 valign=center>
					${row.rzjl_gongzuodanwei1}
					</td>
					<td width=106 valign=center>
						${row.rzjl_zhiwu1}
					</td>
					<td width=118 valign=center>
					${row.rzjl_lizhiyuanyin1}
					</td>
					<td width=232 valign=center>
					${row.rzjl_zmr_lxfs1}
					</td>
				</tr>




				<tr style="height:45pt; 
text-align: center;">
					<td width=210 valign=center>
 						${row.rzjl_qizhishijian2}
					</td>
					<td width=248 valign=center>
						${row.rzjl_gongzuodanwei2}
					</td>
					<td width=106 valign=center>
						${row.rzjl_zhiwu2}
					</td>
					<td width=118 valign=center>
						${row.rzjl_lizhiyuanyin2}
					</td>
					<td width=232 valign=center>
						${row.rzjl_zmr_lxfs2}
					</td>
				</tr>



				<tr style="height:45pt; 
text-align: center;">
					<td width=210 valign=center>
						${row.rzjl_qizhishijian3}
					</td>
					<td width=248 valign=center>
						${row.rzjl_gongzuodanwei3}
					</td>
					<td width=106 valign=center>
						${row.rzjl_zhiwu3}
					</td>
					<td width=118 valign=center>
						${row.rzjl_lizhiyuanyin3}
					</td>
					<td width=232 valign=center>
						${row.rzjl_zmr_lxfs3}
					</td>
				</tr>
			</table>
		</div>


		<!-- 家庭成员 -->


		<p class=MsoNormal style="margin-top:15.6000pt;mso-para-
margin-top:1.0000gd;text-align:left;"><b><span style="mso-spacerun:'yes';font-
family:宋体;font-weight:bold;
		font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<font face="宋
体" size="5">四、家庭成员信息</font>
				</span></b><span style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
		mso-hansi-font-family:Calibri;font-size:10.0000pt;mso-font-
kerning:1.0000pt;">
				<font face="宋体">（可在入职时填写，填写时请提供完整的家庭成员信息）</font>
			</span><span style="mso-
spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
		mso-hansi-font-family:Calibri;font-size:9.0000pt;mso-font-
kerning:1.0000pt;">
				<o:p></o:p>
			</span></p>




		<div align=center>
			<table class=MsoNormalTable border=1 cellspacing=0>

				<tr style="height:40pt; 
text-align: center;">
					<td width="230px;" valign=center>

						<b>
							<font face="宋体" size="5"> 姓名 </font>
						</b>
					</td>
					<td width="250px;" valign=center>
						<b>
							<font face="宋体" size="5"> 与本人关系</font>
						</b>
					</td>
					<td width="230px;" valign=center>
						<b>
							<font face="宋体" size="5"> 出生年月</font>
						</b>
					</td>
					<td width="230px;" valign=center>

						<b>
							<font face="宋体" size="5"> 从事职业 </font>
						</b>
					</td>
					<td width="230px;" valign=center>

						<b>
							<font face="宋体" size="5"> 居住地</font>
						</b>
					</td>
				</tr>
				<tr style="height:40pt; text-align: center;">
					<td width=103 valign=center>
						${row.jtcy_xingming1}
					</td>
					<td width=106 valign=center>
					${row.jtcy_yubenrenguanxi1}
					</td>

					<td width=165 valign=center>
					${row.jtcy_chushengnianyue1}
					</td>
					<td width=295 valign=center>
					${row.jtcy_congshizhiye1}
					</td>
					<td width=242 valign=center>
				    ${row.jtcy_juzhudi1}
					</td>
				</tr>


				<tr style="height:40pt; text-align: center;">
					<td width=103 valign=center>
						${row.jtcy_xingming2}
					</td>
					<td width=106 valign=center>
						${row.jtcy_yubenrenguanxi2}
					</td>
					<td width=165 valign=center>
						${row.jtcy_chushengnianyue2}
					</td>
					<td width=295 valign=center>
						${row.jtcy_congshizhiye2}
					</td>
					<td width=242 valign=center>
						${row.jtcy_juzhudi2}
					</td>
				</tr>


				<tr style="height:40pt; text-align: center;">
					<td width=103 valign=center>
						${row.jtcy_xingming3}
					</td>
					<td width=106 valign=center>
						${row.jtcy_yubenrenguanxi3}
					</td>
					<td width=165 valign=center>
						${row.jtcy_chushengnianyue3}
					</td>
					<td width=295 valign=center>
					${row.jtcy_congshizhiye3}
					</td>
					<td width=242 valign=center>
					 ${row.jtcy_juzhudi3}
					</td>
				</tr>

			</table>
		</div>


		<!-- 个人健康说明 -->
		<!-- 个人健康说明 -->





		<p class=MsoNormal style=" margin-top:15.6000pt;mso-
para-margin-top:1.0000gd;text-align:left;"><b><span style="mso-
spacerun:'yes';font-family:宋体;font-weight:bold;
font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<font face="宋体" size="5">五、
						个人健康说明</font>
				</span></b> </p>








		<div align=center>
			<table class=MsoNormalTable border=1 cellspacing=0 style="text-align: center;">
				<tr style="height:30pt;">
					<td width="212px;" valign=center>
						<b>
							<font face="宋体" size="5"> 视力 </font>
						</b>
					</td>
					<td width="212px;" valign=center>
						<b> <input type="checkbox" id = "shili1" name = "" value="${shili}" /> &nbsp;良好

							&nbsp;&nbsp;&nbsp;<input type="checkbox" id = "shili2" name = "" value="" />&nbsp;辅助 </b>
					</td>
					<td width="212px;" valign=center>
						<b>
							<font face="宋体" size="5"> 听力</font>
						</b>
					</td>
					<td width="212px;" valign=center>
						<b> <input type="checkbox" id = "tingli1" name = "" value="${tingli}" /> 良好

							&nbsp; <input type="checkbox" id = "tingli2" name = "" value="" />
							辅助 </b>
					</td>
					<td width="212px;" valign=center>
						<b>
							<font face="宋体" size="5"> 血型</font>
						</b>
					</td>
					<td width=161 valign=center>
  ${row.grjksm_xuexing}
					</td>
				</tr>
				<tr style="height:30pt;">
					<td width=446 valign=center colspan=3>
						<b>
							<font face="宋体" size="5">
								是否患有遗传性疾病精神类或传染性疾病？</font>
						</b>
					</td>
					<td width=468 valign=center colspan=3>
						<b> <input type="checkbox" id = "jibing" name = "" value="${jibing}" /> 否
							&nbsp;&nbsp; <!-- <input type="checkbox" id = "" name = "" value="" /> --> 是</b>
说明：<u>${jibing_sm}</u>

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
			</table>
		</div>

















		<!-- ------------------------------其
他------------------------------------------- -->





		<p class=MsoNormal style="  margin-top:15.6000pt;mso-
para-margin-top:1.0000gd;text-align:left;"><b><span style="mso-
spacerun:'yes';font-family:宋体;font-weight:bold;
font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<font face="宋体" size="5">六、
						其他</font>
					<font face="宋体"></font>
				</span></b><b><span style="mso-
spacerun:'yes';font-family:宋体;font-weight:bold;
font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<o:p></o:p>
				</span></b></p>







		<div align=center>
			<table class=MsoNormalTable border=1 cellspacing=0>
				<tr style="height:30pt;">
					<td width="308px;" valign=center rowspan=4 style="text-align: center;">
						<b>
							<font face="宋体" size="5"> 是否与本集团在职员工存在亲属关系?</font>
						</b>
						<br /><br />
						&nbsp; <input type="checkbox" id = "jituanqinshu" name = "" value="${jituanqinshu }" />否 &nbsp;
						<!-- <input type="checkbox" id = "" name = "" value="" /> -->是（请在右侧列明）
					</td>

					<td width="308px;" valign=center style="text-align: center;">
						<b>
							<font face="宋体" size="5"> 亲属员工姓名 </font>
						</b>
					</td>
					<td width="308px;" valign=center style="text-align: center;">
						<b>
							<font face="宋体" size="5"> 与本人关系 </font>
						</b>
					</td>
					<td width="308px;" valign=center rowspan=4>
						<b>
							<font face="宋体" size="5"> 2、是否曾在本集团相关子公司任职？</font>
						</b>
						<br /> <br />&nbsp;<input type="checkbox" id = "zigongsirenzhi" name = "" value="${zigongsirenzhi}" />否 &nbsp; 是 ，填写公司名称：
						<u>${zgsrz_mingcheng}</u>
					</td>
				</tr>




				<tr style="height:30pt; text-align: center;">
					<td width=128 valign=center>
					${row.qita_jituanqinshu1}
					</td>
					<td width=143 valign=center>
					${row.qita_yubenrenguanxi1}
					</td>
				</tr>
				<tr style="height:30pt; text-align: center;">
					<td width=128 valign=center>
					${row.qita_jituanqinshu2}
					</td>
					<td width=143 valign=center>
					${row.qita_yubenrenguanxi2}
					</td>
				</tr>
				<tr style="height:30pt; text-align: center;">
					<td width=128 valign=center>
					${row.qita_jituanqinshu3}
					</td>
					<td width=143 valign=center>
					${row.qita_yubenrenguanxi3}
					</td>
				</tr>
			</table>
		</div>




		<!-- -------------------------------------------应聘说
明-------------------------------------------------------- -->

		<p class=MsoNormal style="  margin-top:15.6000pt;mso-para-margin-
top:1.0000gd;text-align:left;"><b><span style="mso-spacerun:'yes';font-family:
宋体;font-weight:bold;
font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<font face="宋体" size="5">应聘者声明</font>
				</span></b><b><span style="mso-
spacerun:'yes';font-family:宋体;font-weight:bold;
font-size:14.0000pt;mso-font-kerning:1.0000pt;">
					<o:p></o:p>
				</span></b></p>









		<div align=center>

			<table class=MsoNormalTable border=1 cellspacing=0>
				<tr style="height:100pt;">
					<td valign=center>
						<p class=MsoNormal style="margin-top:7.8000pt;margin-left:18.0000pt;mso-para-margin-top:0.5000gd;
text-indent:-18.0000pt;mso-pagination:widow-orphan;mso-list:l0 level1 lfo2;">
							<![if !
supportLists]><span style="font-family:'Times New Roman';mso-fareast-font-
family:宋体;font-size:10.5000pt;
mso-font-kerning:1.0000pt;"><span
								 style='mso-list:Ignore;'>&nbsp;1、<span>&nbsp;</span></span></span>
							<![endif]><span style="mso-spacerun:'yes';font-family:宋体;font-size:15.5000pt;
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
							<![endif]><span style="mso-spacerun:'yes';font-family:宋体;font-size:15.5000pt;
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
							<![endif]><span style="mso-spacerun:'yes';font-family:宋体;font-size:15.5000pt;
mso-font-kerning:1.0000pt;">本人确认本表中所提供的个人信息均为准确、真实、有效
								，同时本人充分了解这是双方订立劳动合同的重要前提，如存在弄虚作假或隐瞒不报的情
								况，本人同意公司解除劳动合同或对劳动合同做无效认定处理。</span><span style="font-
family:微软雅黑;mso-bidi-font-family:Tahoma;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">

								<o:p></o:p>
							</span></p>




						<p class=MsoNormal style="text-indent:358.4000pt;mso-char-indent-count:34.0000;text-align:left;
line-height:150%;"><b><span
								 style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;font-weight:bold;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">签

									&nbsp;名<font face="Calibri">:</font></span></b><b><span style="mso-
spacerun:'yes';font-family:宋体;font-weight:bold;
font-size:9.0000pt;mso-font-
kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;</span></b><b><span style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-
family:Calibri;
font-weight:bold;font-size:10.5000pt;mso-font-
kerning:1.0000pt;">&nbsp;</span></b><b><span
								 style="font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-
family:Calibri;
font-weight:bold;font-size:10.5000pt;mso-font-kerning:1.0000pt;">

									<o:p></o:p>

								</span></b></p>
						<p class=MsoNormal style="text-indent:358.4000pt;mso-char-indent-count:34.0000;text-align:left;
line-height:150%;"><b><span
								 style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;font-weight:bold;font-size:10.5000pt;
mso-font-kerning:1.0000pt;">日

									&nbsp;期<font face="Calibri">:</font></span></b><span style="font-family:宋
体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">

								<o:p></o:p>
							</span></p>





					</td>
				</tr>
			</table>
		</div>
 

</c:forEach>


<script type="text/javascript">
 
 function check(){
	 //婚姻状况
 	var a= document.getElementById("hunyinzhuangkuang1").value;
	if(a == "已婚"){		
		document.getElementById("hunyinzhuangkuang2").checked=true;
	}else{
		document.getElementById("hunyinzhuangkuang1").checked=true;
	}
	
	
	 //婚姻状况
 	var b= document.getElementById("hukouxingzhi").value;
	if(b == "（广州）本地城镇"){		
		document.getElementById("hukouxingzhi").checked=true;
	}else if (b == "（广州）本地农村"){
		document.getElementById("hukouxingzhi1").checked=true;
	}else if (b == "外地城镇"){
		document.getElementById("hukouxingzhi2").checked=true;
	}else if (b == "外地农村"){
		document.getElementById("hukouxingzhi3").checked=true;
	}
	
	
	 //文化程度
 	var c= document.getElementById("wenhuachengdu1").value;
	if(c == "硕士研究生及以上"){		
		document.getElementById("wenhuachengdu1").checked=true;
	}else if (c == "大学本科"){
		document.getElementById("wenhuachengdu2").checked=true;
	}else if (c == "大学专科"){
		document.getElementById("wenhuachengdu3").checked=true;
	}else if (c == "中专"){
		document.getElementById("wenhuachengdu4").checked=true;
	}else if (c == "高中及以下"){
		document.getElementById("wenhuachengdu5").checked=true;
	}
	
	
	//办公软件Word
 	var d= document.getElementById("Word").value;
	if(d !== null&& d !==""){		
		document.getElementById("Word").checked=true;
	}
	
	
	//办公软件Excel
 	var e= document.getElementById("Excel").value;
	if(e !== null&& e !==""){		
		document.getElementById("Excel").checked=true;
	}
	
	//办公软件PPT
 	var f= document.getElementById("PPT").value;
	if(f !== null&& f !==""){		
		document.getElementById("PPT").checked=true;
	}
	
	//制图软件CAD
 	var g= document.getElementById("CAD").value;
	if(g !== null&& g !==""){		
		document.getElementById("CAD").checked=true;
	}
	
	//制图软件Photoshop
 	var h= document.getElementById("Photoshop").value;
	if(h !== null&& h !==""){		
		document.getElementById("Photoshop").checked=true;
	}
	
	//语言能力 普通话
 	var i= document.getElementById("putonghua").value;
	if(i !== null&& i !==""){		
		document.getElementById("putonghua").checked=true;
	}
	
	//语言能力 粤话
 	var j= document.getElementById("yuhua").value;
	if(j !== null&& j !==""){		
		document.getElementById("yuhua").checked=true;
	}
	
	
	//违法记录 无 选择框
 	var k= document.getElementById("weifajilu1").value;
	if(k !== null&& k !==""){		
		document.getElementById("weifajilu1").checked=true;
	}
	
	
	//违法记录 有 选择框
 	var l= document.getElementById("weifajilu3").value;
	if(l !== null&& l !==""){		
		document.getElementById("weifajilu3").checked=true;
	}
	
	
	//驾照 无 
 	var m= document.getElementById("Jiazhao2").value;
	if(m =="无"){		
		document.getElementById("Jiazhao2").checked=true;
	}
	
	//视力 无 
 	var n= document.getElementById("shili1").value;
	if(n == "良好"){		
		document.getElementById("shili1").checked=true;
	}else{
		document.getElementById("shili2").checked=true;
	}
	
	//听力    
 	var n= document.getElementById("tingli1").value;
	if(n == "良好"){		
		document.getElementById("tingli1").checked=true;
	}else{
		document.getElementById("tingli2").checked=true;
	}
	
	//其他 是否疾病
	var o= document.getElementById("jibing").value;
	if(o == "无"){		
		document.getElementById("jibing").checked=true;
	} 
	
	//其他无集团亲属
	var p= document.getElementById("jituanqinshu").value;
	if(p == "无"){		
		document.getElementById("jituanqinshu").checked=true;
	} 
	
	
	//其他子公司任职 无 
	var q= document.getElementById("zigongsirenzhi").value;
	if(q == "无"){		
		document.getElementById("zigongsirenzhi").checked=true;
	} 
	
	
	 
  
 }//函数结束
 
 //载入时加载函数
 window.onload = check; 
 
</script>






	</body>
</html>
 