package cn.itcast.core.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.itcast.core.bean.Dingdan;
import cn.itcast.core.bean.FuwuLeixing;
import cn.itcast.core.bean.XinXiBiao;
import cn.itcast.core.bean.Yiyuan;
import cn.itcast.core.dao.RenShiDao;
import cn.itcast.core.service.RenShiService;
/**
 * 客户管理
 * @author lx
 *
 */

@Service("renshiService")
@Transactional
public class RenShiServiceImpl implements RenShiService {

	// 定义dao属性
	@Autowired
	private RenShiDao renShiDao;

	//添加人员
	@Override
	public void addXinXiBiao(XinXiBiao xinXiBiao) {
		// TODO Auto-generated method stub
		renShiDao.addXinXiBiao(xinXiBiao);
	}

	//查询所有人员信息
	@Override
	public List<XinXiBiao> findAllMan() {
		// TODO Auto-generated method stub
		return renShiDao.findAllMan();
	}

	//参数模糊查询
	@Override
	public List<XinXiBiao> findAllManByCanShu(String canshu) {
		// TODO Auto-generated method stub
		return renShiDao.findAllManByCanShu(canshu);
	}

	//查询单一人员信息
	@Override
	public List<XinXiBiao> findManById(String id) {
		// TODO Auto-generated method stub
		return renShiDao.findManById(id);
	}

	//修改信息
	@Override
	public void ManByIdEdit(XinXiBiao xinXiBiao) {
		// TODO Auto-generated method stub
		renShiDao.ManByIdEdit(xinXiBiao);
	}

	 

 

}
