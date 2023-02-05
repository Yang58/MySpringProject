package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.AdminMemberDTO;
import org.zerock.mapper.AdminMemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AdminMemberServiceImpl implements AdminMemberService{
	
	
	private AdminMemberMapper mapper;
	
	@Override
	public List<AdminMemberDTO> getList() {
		
		return mapper.getList();
	}

}
