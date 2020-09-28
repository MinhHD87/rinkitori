package com.rinkitori.controller;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.rinkitori.entity.NhanVien;
import com.rinkitori.service.NhanVienService;

@Controller
@RequestMapping("dangnhap/")

public class DangNhapController {
	@Autowired
	NhanVienService nhanVienService;

	@GetMapping
	public String Default() {
		return "dangnhap";
	}

	@PostMapping
	public String Dangky(@RequestParam String email, @RequestParam String matkhau,
			@RequestParam String nhaplaimatkhau, ModelMap modelMap) {
		boolean ktmail = isValid(email);
		if (ktmail) {
			if (matkhau.equals(nhaplaimatkhau)) {
				NhanVien nhanVien = new NhanVien();
				nhanVien.setEmail(email);
				nhanVien.setTendangnhap(email);
				nhanVien.setMatkhau(matkhau);

				boolean ktThem = nhanVienService.ThemNhanVien(nhanVien);
				if (ktThem) {
					modelMap.addAttribute("kiemtradangnhap", "tạo tài khoản thành công");
				} else {
					modelMap.addAttribute("kiemtradangnhap", "tạo tài khoản thất bại");
				}
			}else {
				modelMap.addAttribute("kiemtradangnhap", "mật khẩu không trùng khớp");
			}
		} else {
			modelMap.addAttribute("kiemtradangnhap", "Vui lòng nhập đúng định dạng email");
		}
		return "dangnhap";

	}

	public static boolean isValid(String email) {
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\." + "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z"
				+ "A-Z]{2,7}$";

		Pattern pat = Pattern.compile(emailRegex);
		if (email == null)
			return false;
		return pat.matcher(email).matches();
	}

}
