package com.rinkitori.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.rinkitori.entity.SanPham;
import com.rinkitori.service.SanPhamService;

@Controller
@RequestMapping("/")
public class TrangChuController {

	@Autowired
	SanPhamService sanPhamService;
	@GetMapping

	

	public String Default( String email,ModelMap modelMap,HttpSession httpSession) {
		
			if(httpSession.getAttribute("email")!=null) {
				String email1 =(String) httpSession.getAttribute("email");
				String chucaidau = email1.substring(0,1);
				modelMap.addAttribute("chucaidau", chucaidau);
			}
		List<SanPham> listSanPhams= sanPhamService.LayDanhSachSanPhamLimit(0);
		
		modelMap.addAttribute("listsanpham", listSanPhams);
		
		
		
		return "trangchu";
	}
	
}
