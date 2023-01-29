package org.zerock.service;

import java.util.List;

import org.zerock.domain.AdminBoardDTO;

public interface AdminBoardService {
	
	public void write(AdminBoardDTO dto);
	
	public AdminBoardDTO read(Long bno);
	
	public List<AdminBoardDTO> getList();
	
	public void update(AdminBoardDTO dto);
	
	public void delete(Long bno);
	
	
}
