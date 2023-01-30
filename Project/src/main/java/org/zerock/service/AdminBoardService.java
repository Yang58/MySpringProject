package org.zerock.service;

import java.util.List;

import org.zerock.domain.AdminBoardDTO;
import org.zerock.domain.Criteria;

public interface AdminBoardService {
	
	public void write(AdminBoardDTO dto);
	
	public AdminBoardDTO read(Long bno);
	
	public List<AdminBoardDTO> getList();
	
	public void update(AdminBoardDTO dto);
	
	public void delete(Long bno);
	
	public List<AdminBoardDTO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
}
