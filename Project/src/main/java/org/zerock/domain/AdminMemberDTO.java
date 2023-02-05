package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminMemberDTO {
	
	private String id;
	private String pw;
	private String phone_num;
	private Date regidate;
	private int admin_type;
	private String empno;
	private Long cno;
	
	private String name;
}
