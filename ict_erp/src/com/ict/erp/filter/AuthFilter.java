package com.ict.erp.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Servlet Filter implementation class AuthFilter
 */
@WebFilter("/AuthFilter")
public class AuthFilter implements Filter {
	private Log log = LogFactory.getLog(this.getClass());
	
    public AuthFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	HttpServletRequest hsr = (HttpServletRequest)request;
	HttpSession hs = hsr.getSession();
	log.trace(hsr.getSession());
	log.debug(hsr.getRequestURI());
	log.info(hsr.getRequestURI());
	log.warn(hsr.getRequestURI());
	log.error(hsr.getRequestURI());
	log.fatal(hsr.getRequestURI());
	
	if(hs.getAttribute("user")==null) {
		System.out.println("권한없음");
	}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
