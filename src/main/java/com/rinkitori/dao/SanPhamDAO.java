package com.rinkitori.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rinkitori.daoimp.SanPhamImp;
import com.rinkitori.entity.SanPham;
@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDAO implements SanPhamImp{

	@Autowired
	SessionFactory sesionFactory;
	
	@Override
	@Transactional
	public List<SanPham> LayDanhSachSanPhamLimit(int spBatdau) {
		Session session = sesionFactory.getCurrentSession();
		 List<SanPham> listSanPhams= session.createQuery("from SANPHAM ").setFirstResult(spBatdau).setMaxResults(20).getResultList();
				
		return listSanPhams;
	}

	@Override
	@Transactional
	public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		Session session = sesionFactory.getCurrentSession();
		String query = " from SANPHAM where masanpham="+masanpham;
		 SanPham sp= (SanPham) session.createQuery(query).getSingleResult();
			
		return sp;
	}

}
