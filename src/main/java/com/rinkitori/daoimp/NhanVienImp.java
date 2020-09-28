package com.rinkitori.daoimp;

import com.rinkitori.entity.NhanVien;

public interface NhanVienImp {

	 boolean KiemTraDangNhap(String email, String matkhau);
	 boolean ThemNhanVien(NhanVien nhanVien);
}
