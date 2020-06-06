package cn.itcast.core.web.controller;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

 
import cn.itcast.core.bean.XinXiBiao;
import cn.itcast.core.service.RenShiService;

/**
 * 客户管理
 * <p>
 * Title: CustomerController
 * </p>
 * <p>
 * Description:
 * </p>
 * <p>
 * Company: www.itcast.cn
 * </p>
 * 
 * @version 1.0
 */
@Controller
public class RenShiController implements Serializable {

	@Autowired
	private RenShiService renShiService;

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 跳转到首页
	@RequestMapping(value = "/toindex")
	public String showIndex(Model model) {
		return "index";
	}
	
	
	// 跳转到添加成功首页 为了弹出框
		@RequestMapping(value = "/toindexSuccess")
		public String showIndexSuccess(Model model) {
			model.addAttribute("success", "success");
			return "index";
		}
		// 跳转到添加失败首页 为了弹出框
		@RequestMapping(value = "/showIndexFalse")
		public String showIndexFalse(Model model) {
			model.addAttribute("success", "false");
			return "index";
		}
	

	// 添加登记表
	@RequestMapping(value = "/addXinXiBiao")
	public String addXinXiBiao(Model model, HttpServletRequest request, HttpSession httpSession, XinXiBiao xinXiBiao) {

		 String name = xinXiBiao.getName();
		 String yingpingzhiwei = xinXiBiao.getYingpingzhiwei();
		if(name!=null&&name !=""&&yingpingzhiwei!=null&&yingpingzhiwei !="") {
			renShiService.addXinXiBiao(xinXiBiao);
			//return "redirect:/toindexSuccess.action";
			//model.addAttribute("success", "success");
			return "redirect:/AddSuccess.action";
		}else {
			//model.addAttribute("success", "false");
			return "redirect:/AddFalse.action";
		}
		 
		
	}

	// 查询所有人员信息
	@RequestMapping(value = "/admin.action")
	public String findAllMan(Model model, HttpServletRequest request, HttpSession httpSession) {
		List<XinXiBiao> xinXiBiao = renShiService.findAllMan();
		model.addAttribute("xinXiBiao", xinXiBiao);
		return "customer";
	}

	// 条件查询所有人员信息
	@RequestMapping(value = "/findAllManByCanShu.action")
	public String findAllManByCanShu(Model model, HttpServletRequest request, HttpSession httpSession, String canshu) {

		 System.out.println(canshu);

		if (canshu != null && canshu != "") {
			// System.out.println(111);
			List<XinXiBiao> xinXiBiao = renShiService.findAllManByCanShu("%"+canshu+"%");
			model.addAttribute("xinXiBiao", xinXiBiao);
			return "customer";
		} else {
			// System.out.println(222);
			//跳转查询所有人的方法
			return "redirect:/admin.action";
		}
	}

//条件查询单一人员信息
	@RequestMapping(value = "/findManById.action")
	public String findManById(Model model, HttpServletRequest request, HttpSession httpSession, String id) {
		if(id!=null&&id!="") {
			List<XinXiBiao> xinXiBiao = renShiService.findManById(id);
			model.addAttribute("xinXiBiao", xinXiBiao);
			
			//System.out.println(xinXiBiao.get(0).getName());
			//婚姻状况
			String Hunyinzhuangkuang = xinXiBiao.get(0).getHunyinzhuangkuang();
			model.addAttribute("Hunyinzhuangkuang", Hunyinzhuangkuang);
			
			//户口性质
			String hukouxingzhi = xinXiBiao.get(0).getHukouxingzhi();
			model.addAttribute("hukouxingzhi", hukouxingzhi);
			
			//文化程度
			String wenhuachengdu = xinXiBiao.get(0).getWenhuachengdu();
			model.addAttribute("wenhuachengdu", wenhuachengdu);
			
			//办公软件Word
			String Word = xinXiBiao.get(0).getJsjsp_bangongruanjian1();
			model.addAttribute("Word", Word);
			
			//办公软件Excel
			String Excel = xinXiBiao.get(0).getJsjsp_bangongruanjian2();
			model.addAttribute("Excel", Excel);
			
			//办公软件PPT
			String PPT = xinXiBiao.get(0).getJsjsp_bangongruanjian3();
			model.addAttribute("PPT", PPT);
			
			//办公软件其他
			String qita = xinXiBiao.get(0).getJsjsp_bangongruanjian4();
			model.addAttribute("qita", qita);
			
			 //制图软件CAD 
			String CAD = xinXiBiao.get(0).getJsjsp_huitugongju1();
			model.addAttribute("CAD", CAD);
			
			//制图软件Photoshop
			String Photoshop = xinXiBiao.get(0).getJsjsp_huitugongju2();
			model.addAttribute("Photoshop", Photoshop);
			
			//制图软件qita
			String ht_qita = xinXiBiao.get(0).getJsjsp_huitugongju3();
			model.addAttribute("ht_qita", ht_qita);
			
			//语言能力 普通话
			String putonghua = xinXiBiao.get(0).getYuyannengli1();
			model.addAttribute("putonghua", putonghua);
			
			//语言能力 粤话
			String yuhua = xinXiBiao.get(0).getYuyannengli2();
			model.addAttribute("yuhua", yuhua);
			
			//语言能力 qita
			String yy_qita = xinXiBiao.get(0).getYuyannengli3();
			model.addAttribute("yy_qita", yy_qita);
			
			//违法记录 无 选择框
			String weifajilu1 = xinXiBiao.get(0).getWeifajilu1();
			model.addAttribute("weifajilu1", weifajilu1);
			
			//违法记录 有 选择框
			String weifajilu3 = xinXiBiao.get(0).getWeifajilu3();
			model.addAttribute("weifajilu3", weifajilu3);
			
			/*//驾照1 拥有
			String Jiazhao1 = xinXiBiao.get(0).getJiazhao1();
			model.addAttribute("Jiazhao1", Jiazhao1);*/
			
			//驾照2 无
			String Jiazhao2 = xinXiBiao.get(0).getJiazhao2();
			model.addAttribute("Jiazhao2", Jiazhao2);
			
			//个人健康描述 视力
			String shili = xinXiBiao.get(0).getGrjksm_shili();
			model.addAttribute("shili", shili);
			
			
			//个人健康描述 听力
			String tingli = xinXiBiao.get(0).getGrjksm_tingli();
			model.addAttribute("tingli", tingli);
			
			//其他 是否疾病
			String jibing = xinXiBiao.get(0).getGrjksm_jibing();
			model.addAttribute("jibing", jibing);
			
			//其他 疾病说明
			String jibing_sm = xinXiBiao.get(0).getGrjksm_jibing_sm();
			model.addAttribute("jibing_sm", jibing_sm);
			
			
			//其他 有无集团亲属
			String jituanqinshu = xinXiBiao.get(0).getQita_jituanqinshu();
			model.addAttribute("jituanqinshu", jituanqinshu);
			
			
			//其他 是否其他子公司任职 无
			String zigongsirenzhi = xinXiBiao.get(0).getQita_zigongsirenzhi();
			model.addAttribute("zigongsirenzhi", zigongsirenzhi);
			
			//其他 是否其他子公司任职 子公司名称
			String zgsrz_mingcheng = xinXiBiao.get(0).getQita_zgsrz_mingcheng();
			model.addAttribute("zgsrz_mingcheng", zgsrz_mingcheng);
			
 
			
		}
		
		
		

		return "xinxibiao";
	}

	
	//条件查询单一人员信息跳转到编辑界面
		@RequestMapping(value = "/findManByIdToEdit.action")
		public String findManByIdToEdit(Model model, HttpServletRequest request, HttpSession httpSession, String id) {
			 
			if(id!=null&&id!="") {
				List<XinXiBiao> xxb = renShiService.findManById(id);
				model.addAttribute("xxb", xxb);
			}
			return "edit";
		}

		
		
	
     //编辑
				@RequestMapping(value = "/edit.action")
				public String ManByIdEdit(Model model, HttpServletRequest request, HttpSession httpSession, XinXiBiao xinXiBiao) {
					 
					 System.out.println(xinXiBiao.getId());
					 //修改用户
					 renShiService.ManByIdEdit(xinXiBiao);
					 //return "redirect:/findManByIdToEdit.action?id="+xinXiBiao.getId();
					 return "redirect:/EditSuccess.action";
				}
	//编辑成功
				@RequestMapping(value = "/EditSuccess.action")
				public String EditSuccess(Model model) {
					model.addAttribute("success", "success");
					return "EditSuccess";
				}
	//添加成功			
				@RequestMapping(value = "/AddSuccess.action")
				public String AddSuccess(Model model) {
					model.addAttribute("success", "success");
					return "AddSuccess";
				}
  //添加失败			
				@RequestMapping(value = "/AddFalse.action")
				public String AddFalse(Model model) {
					model.addAttribute("success", "success");
					return "AddFalse";
				}
				
}
