package cn.itcast.core.service;

import java.util.List;

import cn.itcast.core.bean.Dingdan;
import cn.itcast.core.bean.FuwuLeixing;
import cn.itcast.core.bean.XinXiBiao;
import cn.itcast.core.bean.Yiyuan;

public interface RenShiService {

 
	//添加信息
	void addXinXiBiao(XinXiBiao xinXiBiao);

	//查询所有人员信息 
	List<XinXiBiao> findAllMan();

	//参数模糊查询
	List<XinXiBiao> findAllManByCanShu(String canshu);

	//查询单一人员信息
	List<XinXiBiao> findManById(String id);

	//修改用户
	void ManByIdEdit(XinXiBiao xinXiBiao);

	 
}
