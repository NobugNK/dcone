package com.dcone.dtss;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;

@Controller
public class PlayController {

	@Autowired
	JdbcTemplate jdbcTemplate;
}
