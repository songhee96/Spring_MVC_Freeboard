package com.ja.freeboard.mapper;

import java.util.*;

import com.ja.freeboard.vo.BoardVo;

public interface BoardSQLMapper {
	
	public void insert(BoardVo boardVo);
	
	public BoardVo selectByNo(int no);
	
	public List<BoardVo> selectAll();
	
	public void deleteByNo(int no);
	
	public void update(BoardVo vo);
	
	public void updateReadCount(int no);
	//매개변수 title은 boardSQLMapper XML에 있는 title 변수와 같은 이름으로 해야함.
	public List<BoardVo> selectBytitle(String title);

}
