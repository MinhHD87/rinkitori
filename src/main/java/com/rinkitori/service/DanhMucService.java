package com.rinkitori.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rinkitori.dao.DanhMucDAO;
import com.rinkitori.daoimp.DanhMucImp;
import com.rinkitori.entity.DanhMucSanPham;
@Service
public class DanhMucService implements DanhMucImp{

	@Autowired
	DanhMucDAO danhMucDAO;
	@Override
	public List<DanhMucSanPham> LayDanhMuc() {
		
		return danhMucDAO.LayDanhMuc();
	}

}
