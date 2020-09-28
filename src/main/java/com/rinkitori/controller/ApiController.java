 package com.rinkitori.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rinkitori.entity.GioHang;
import com.rinkitori.service.NhanVienService;

@Controller
@RequestMapping(value = "api/")
@SessionAttributes({"email","giohang"})

public class ApiController {

	@Autowired
	NhanVienService nhanvvienService;
	
	
	
	
	@GetMapping("kiemtradangnhap")
	@ResponseBody
	
	public String kiemTraDangNhap(@RequestParam String email, @RequestParam String matkhau, ModelMap modelMap){
		boolean kiemtra = nhanvvienService.KiemTraDangNhap(email, matkhau);
		modelMap.addAttribute("email", email);
		if(kiemtra) {
			return "" +kiemtra;
		}
		else {
			return "" +kiemtra;
		}
		
	}
	
	@GetMapping("themgiohang")
	@ResponseBody
	
	public void themGioHang(@RequestParam String tenmau,@RequestParam int mamau,@RequestParam String tensize,@RequestParam int masize,@RequestParam int soluong,@RequestParam String tensp,@RequestParam String giatien,@RequestParam int masp,HttpSession httpSession) {
	
		if(httpSession.getAttribute("giohang")==null) {
			ThemSanPhamGioHang(giatien, mamau, masize, masp, soluong, tenmau, tensize, tensp, httpSession);
								
		}
		else {
			int vitri = kiemTraSanPhamDaTonTaiGioHang(masp, masize, mamau, httpSession);
			if(vitri==-1) {
				List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
				GioHang gioHang = new GioHang();
				gioHang.setGiatien(giatien);
				gioHang.setMamau(mamau);
				gioHang.setMasize(masize);
				gioHang.setMasp(masp);
				gioHang.setSoluong(soluong);
				gioHang.setTenmau(tenmau);
				gioHang.setTensize(tensize);
				gioHang.setTensp(tensp);
				listGioHangs.add(gioHang);
				httpSession.setAttribute("giohang", listGioHangs);
			}else {
				List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
				int soLuongMoi = listGioHangs.get(vitri).getSoluong()+1;
				listGioHangs.get(vitri).setSoluong(soLuongMoi);
				httpSession.setAttribute("giohang", listGioHangs);
			}
		}
		List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
		System.out.println(listGioHangs.size());
	}
	
	public void ThemSanPhamGioHang(String giatien,int mamau,int masize,int masp,int soluong,String tenmau, String tensize,String tensp,HttpSession httpSession) {
		List<GioHang> listGioHangs= new ArrayList<>();
		GioHang gioHang = new GioHang();
		gioHang.setGiatien(giatien);
		gioHang.setMamau(mamau);
		gioHang.setMasize(masize);
		gioHang.setMasp(masp);
		gioHang.setSoluong(soluong);
		gioHang.setTenmau(tenmau);
		gioHang.setTensize(tensize);
		gioHang.setTensp(tensp);
		listGioHangs.add(gioHang);
		httpSession.setAttribute("giohang", listGioHangs);
	}
	
	public int kiemTraSanPhamDaTonTaiGioHang(int masp, int masize, int mamau,HttpSession httpSession) {
		List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
		for (int i = 0; i < listGioHangs.size(); i++) {
			if(listGioHangs.get(i).getMasp()==masp && listGioHangs.get(i).getMasize()==masize &&listGioHangs.get(i).getMasize()==mamau ) {
				return i;
			}
		}
		return -1;
	}
}
