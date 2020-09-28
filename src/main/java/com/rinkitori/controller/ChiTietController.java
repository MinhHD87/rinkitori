package com.rinkitori.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rinkitori.entity.DanhMucSanPham;
import com.rinkitori.entity.SanPham;
import com.rinkitori.service.DanhMucService;
import com.rinkitori.service.SanPhamService;

@Controller
@RequestMapping("/chitiet")
public class ChiTietController {
	@Autowired
	SanPhamService sanPhamService;
	
	@Autowired
	DanhMucService danhMucService;
	@GetMapping("/{masanpham}")
	public String Defaul(@PathVariable int masanpham , ModelMap modelMap) {
	SanPham sanPham=	sanPhamService.LayDanhSachChiTietSanPhamTheoMa(masanpham);
	modelMap.addAttribute("sanPham", sanPham);
	List<DanhMucSanPham> danhmucsanpham = danhMucService.LayDanhMuc();
	modelMap.addAttribute("danhmucsanpham", danhmucsanpham);
		return "chitiet";
	}

	@PostMapping

	public String UpdateThongTinNguoiDung() {
	
		return "chitiet";
	}

}
