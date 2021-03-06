package com.project.exhibit.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;
	
	Admin selectAdminCheck(String admin_id) {
		return mapper.selectAdminCheck(admin_id);
	}
}
