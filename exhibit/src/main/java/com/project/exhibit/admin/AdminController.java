package com.project.exhibit.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@Autowired
	private AdminService admin_Service;
	
	/**
	 * 관리자 로그인 화면
	 * @return
	 */
	@RequestMapping("/admin/login")
	public ModelAndView admin() {
		System.out.println("Admin login");
		ModelAndView mav = new ModelAndView("/admin/login");
		
		return mav;
	}
	
	@RequestMapping("/admin/login.do")
	public @ResponseBody Map<String, String> loginCheck(HttpServletRequest request, @RequestParam(value = "admin_id") String admin_id, @RequestParam(value = "admin_pw") String admin_pw) {

		HashMap<String, String> map = new HashMap<String, String>();
		
		Admin admin = admin_Service.selectAdminCheck(admin_id);
		HttpSession session = request.getSession();
		
		if (admin != null) {
			if (!admin.getAdmin_pw().equals(admin_pw)) {
				map.put("fail", "fail");
			} else {
				map.put("admin_id", admin.getAdmin_id());
				map.put("admin_pw", admin.getAdmin_pw());
				session.setAttribute("admin_id", admin.getAdmin_id());
			}
		}
		return map;
	}
}
