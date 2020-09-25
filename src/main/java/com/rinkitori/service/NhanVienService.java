package com.rinkitori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rinkitori.dao.NhanVienDAO;

@Service
public class NhanVienService {

	@Autowired
	NhanVienDAO nhanVienDAO;
	public boolean KiemTraDangNhap(String email , String matkhau) {
		boolean kiemtra = nhanVienDAO.KiemTraDangNhap(email, matkhau);
		return kiemtra;
	}
}
