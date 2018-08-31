<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String rPath = request.getContextPath();
%>
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand active" >
                    <a href="/">
                    	ICT ERP
                    </a>
                </li>
                <li>
                    <a href="<%=rPath%>/test/memberList">사원관리</a>
                </li>
                <li>
                    <a href="<%=rPath%>/level/levelList">레벨관리</a>
                </li>
                <li>
                    <a href="<%=rPath%>/depart/departList">부서관리</a>
                </li>
                <li>
                    <a href="#">이력서</a>
                </li>
                <li>
                    <a href="https://github.com/Runtym/ict_erp" target="_blank">Git</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        </div>