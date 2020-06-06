/*package cn.itcast.common.utils;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils; 

public class UserFilter implements Filter {

 
	
	 @Override
	    public void destroy() {
	        
	    }

	    @Override
	    public void doFilter(ServletRequest request, ServletResponse response,
	            FilterChain chain) throws IOException, ServletException {
	        HttpServletResponse resp = (HttpServletResponse)response;
	        HttpServletRequest req = (HttpServletRequest)request;
	        HttpSession session = req.getSession();
	        String username = (String) session.getAttribute("username");
	     System.out.println("用户id"+username);
	        //简单判断缓存中是否有用户
	        if(username==null){//没有用户
 
	        	request.getRequestDispatcher("/showlogin.action").forward(request,response);
	        	//request.getRequestDispatcher("/customer/showlist.action").forward(request,response);
	        	
	        	
	        }else{//有用户
	        	
	        	//request.getRequestDispatcher("/customer/showlist.action").forward(request,response);
	        	
	        }
	       
	    }

	    @Override
	    public void init(FilterConfig filterConfig) throws ServletException {
	        
	    }
	  
	*//**   
	* 需要排除的页面   
	*//*    
	  
	private String excludedPages;       
	private String[] excludedPageArray;     
	  
	*//**   
	* @see Filter#destroy()   
	*//*    
	  
	public void destroy() {     
	return;     
	}     
	    
	*//**   
	* 对session进行判断当前访问是否有登录   
	*//*    
	  
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {     
	boolean isExcludedPage = false;     
	for (String page : excludedPageArray) {//判断是否在过滤url之外     
	if(((HttpServletRequest) request).getServletPath().equals(page)){     
	isExcludedPage = true;     
	break;     
	}     
	}     
	  
	if (isExcludedPage) {//在过滤url之外     
	chain.doFilter(request, response);     
	} else {//不在过滤url之外，判断session是否存在     
	String session = (String) ((HttpServletRequest) request).getSession().getAttribute("username");     
	System.out.println("session中的信息是："+session);
	if (session == null) {     
		
	//((HttpServletResponse) response).sendRedirect("/showlogin.action");   
	
		request.getRequestDispatcher("/showlogin.action").forward(request,response);
		
		
	} else {     
		request.getRequestDispatcher("/customer/showlist.action").forward(request,response);
		 
	}     
	}     
	}     
	  
	*//**   
	* 初始化函数，获取需要排除在外的url   
	*//*    
	  
	public void init(FilterConfig fConfig) throws ServletException {     
	excludedPages = fConfig.getInitParameter("excludedPages");     
	if (StringUtils.isNotEmpty(excludedPages)) {     
	excludedPageArray = excludedPages.split(",");     
	}     
	return;     
	
	}     
}
*/