package com.project.exhibit.information;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class InformationAdminController {

	@Autowired
	private InformationService info_Service;
	

//	@RequestMapping(value = "/admin/")
}
