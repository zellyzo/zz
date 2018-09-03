package com.ict.erp.dao;

import java.sql.SQLException;
import java.util.List;

import com.ict.erp.vo.MemberInfo;

public interface MemberDAO {
	public List<MemberInfo> selectMiList(MemberInfo mi) throws SQLException;

	public MemberInfo selectMemberInfo(MemberInfo mi) throws SQLException;

	public int insertMi(MemberInfo mi) throws SQLException;

	public int updateMi(MemberInfo mi) throws SQLException;

	public int deleteMi(MemberInfo mi) throws SQLException;

}