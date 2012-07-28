package in.dealo.web.controller;

import in.dealo.svc.AdminService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("clear-cache")
	public void clearAllCache() {
		adminService.clearAllCache();
	}
}
