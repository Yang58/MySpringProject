package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.AdminMemberDTO;

public interface AdminMemberMapper {

	// 회원 리스트 
	public List<AdminMemberDTO> getList();
}
