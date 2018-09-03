package com.ict.erp.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.erp.common.ICTUtils;
import com.ict.erp.service.DepartService;
import com.ict.erp.service.LevelService;
import com.ict.erp.service.MemberService;
import com.ict.erp.service.impl.DepartServiceImpl;
import com.ict.erp.service.impl.LevelServiceImpl;
import com.ict.erp.service.impl.MemberServiceImpl;
import com.ict.erp.vo.MemberInfo;


public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService ms = new MemberServiceImpl();
	private LevelService ls = new LevelServiceImpl();
	private DepartService ds = new DepartServiceImpl();
	private String uri;
	 
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		uri = req.getRequestURI();
		String cmd = ICTUtils.getCmd(uri);
		
		try {
			if(cmd.equals("memberList")) {
				req.setAttribute("mList", ms.selectMiList(null));
			}else if (cmd.equals("memberInsert")) {
				req.setAttribute("liList", ls.getLiList(null));
				req.setAttribute("dList", ds.getDepartInfoNonePageList(null));
			}else if (cmd.equals("memberView")) {
				req.setAttribute("liList", ls.getLiList(null));
				req.setAttribute("diList", ds.getDepartInfoNonePageList(null));
				String miNumStr = req.getParameter("miNum");
				MemberInfo mi = new MemberInfo();
				mi.setMiNum(Long.parseLong(miNumStr));
				req.setAttribute("member", ms.selectMi(mi));
			}
		}catch(SQLException e) {
				e.printStackTrace();
			}
			doService(req,res);
		}


	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		uri = req.getRequestURI();
		String cmd = ICTUtils.getCmd(uri);
		req.setCharacterEncoding("utf-8");
		
		doGet(req, res);
	}
	public void doService(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException {
		uri = "/views" + uri;
		RequestDispatcher rd = req.getRequestDispatcher(uri);
		rd.forward(req, res);
	}

}
