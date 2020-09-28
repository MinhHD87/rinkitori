package com.rinkitori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rinkitori.dao.NhanVienDAO;
import com.rinkitori.daoimp.NhanVienImp;
import com.rinkitori.entity.NhanVien;

@Service
public class NhanVienService implements NhanVienImp {

	@Autowired
	NhanVienDAO nhanVienDAO;
	
	@Override
	public boolean KiemTraDangNhap(String email, String matkhau) {
		boolean kiemtra = nhanVienDAO.KiemTraDangNhap(email, matkhau);
		return kiemtra;
		}

	@Override
	public boolean ThemNhanVien(NhanVien nhanVien) {
		boolean ktThem = nhanVienDAO.ThemNhanVien(nhanVien);
		return ktThem;
	}
}
