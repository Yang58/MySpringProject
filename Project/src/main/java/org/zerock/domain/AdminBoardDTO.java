package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminBoardDTO {
	
	private Long bno;
	private String kind;
	private String board_type;
	private String title;
	private String content;
	private Date reg_date;
	private Date mod_date;
	private int view_count;
	private int secret_type;
	private String id;
}
