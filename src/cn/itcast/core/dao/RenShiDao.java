package cn.itcast.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.itcast.core.bean.Dingdan;
import cn.itcast.core.bean.FuwuLeixing;
import cn.itcast.core.bean.XinXiBiao;
import cn.itcast.core.bean.Yiyuan;

public interface RenShiDao {

	//添加信息
	void addXinXiBiao(XinXiBiao xinXiBiao);

	//添加人员
	List<XinXiBiao> findAllMan();

	//使用参数模糊查询
	List<XinXiBiao> findAllManByCanShu(@Param("canshu")String canshu);

	//查询单一人员信息
	List<XinXiBiao> findManById(@Param("id")String id);

	//修改信息
	void ManByIdEdit(XinXiBiao xinXiBiao);
 
}