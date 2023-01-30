package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.AdminBoardDTO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.AdminBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AdminBoardServiceImpl implements AdminBoardService {

	//@Setter(onMethod_=@Autowired) //생성자에 의한 주입 (단일생성자는 자동 의존주입이 된다)
	private AdminBoardMapper mapper;

	
	@Override
	public void write(AdminBoardDTO dto) {
		log.info("Anno_write ... : " + dto);
		mapper.write(dto);
	}
	
	
	@Override
	public List<AdminBoardDTO> getList() {
		
		log.info("getLIst..");
		return mapper.getList();
	}


	@Override
	public AdminBoardDTO read(Long bno) {
		log.info("get....." + bno);
		return mapper.read(bno);
	}


	@Override
	public void update(AdminBoardDTO dto) {
		log.info("update .... " + dto);
		mapper.update(dto);
	}


	@Override
	public void delete(Long bno) {
		log.info("delete .... : " + bno);
		mapper.delete(bno);
	}


	@Override
	public List<AdminBoardDTO> getList(Criteria cri) {
		log.info("get List with criteria : " + cri );
		return mapper.getListWithPaging(cri);
	}


	@Override
	public int getTotal(Criteria cri) {
		log.info("get Total count ");
		return mapper.getTotalCount(cri);
	}



}
