package com.rinkitori.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rinkitori.dao.SanPhamDAO;
import com.rinkitori.daoimp.SanPhamImp;
import com.rinkitori.entity.SanPham;
@Service
public class SanPhamService implements SanPhamImp{

	@Autowired
	SanPhamDAO sanPhamDao;
	@Override
	public List<SanPham> LayDanhSachSanPhamLimit(int spBatdau) {
	
		return sanPhamDao.LayDanhSachSanPhamLimit(spBatdau);
	}
	@Override
	public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		
		return sanPhamDao.LayDanhSachChiTietSanPhamTheoMa(masanpham);
	}

}
