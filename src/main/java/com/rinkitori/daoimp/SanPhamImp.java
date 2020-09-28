package com.rinkitori.daoimp;

import java.util.List;

import com.rinkitori.entity.SanPham;

public interface SanPhamImp {
List<SanPham> LayDanhSachSanPhamLimit(int spBatdau);

SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham);
	
 
 
}
