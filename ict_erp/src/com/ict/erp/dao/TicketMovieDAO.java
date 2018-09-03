package com.ict.erp.dao;

import java.sql.SQLException;
import java.util.List;

import com.ict.erp.vo.TicketMovieInfo;

public interface TicketMovieDAO {
	public List<TicketMovieInfo> selectTMIList(TicketMovieInfo tmi) throws SQLException;

	public TicketMovieInfo selectTMIInfo(long tmNum) throws SQLException;

	public TicketMovieInfo insertTMIInfo(TicketMovieInfo tmi) throws SQLException;

	public TicketMovieInfo updateTMIInfo(TicketMovieInfo tmi) throws SQLException;

	public TicketMovieInfo deleteTMIInfo(TicketMovieInfo tmi) throws SQLException;
}
