package com.rinkitori.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rinkitori.service.NhanVienService;

@Controller
@RequestMapping("dangnhap/")
public class DangNhapController {

	@GetMapping
	public String Default() {
		
		return "dangnhap";
	}
	@Autowired
	NhanVienService nhanVienService;
	
	@PostMapping
	public String DangNhap(@RequestParam String email,@RequestParam String matkhau,ModelMap modelMap) {
		boolean kiemtra =nhanVienService.KiemTraDangNhap(email, matkhau);
		if(kiemtra) {
			modelMap.addAttribute("kiemtradangnhap", "dang nhap thanh cong");
			System.out.println("dang nhap thanh cong");
		}else {
			System.out.println("dang nhap that bai");
			modelMap.addAttribute("kiemtradangnhap", "dang nhap that bai");
		}
		return "dangnhap";
	}
}
