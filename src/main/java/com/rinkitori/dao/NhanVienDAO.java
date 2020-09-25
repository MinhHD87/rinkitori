package com.rinkitori.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rinkitori.daoimp.NhanVienImp;
import com.rinkitori.entity.NhanVien;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienDAO implements NhanVienImp {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public boolean KiemTraDangNhap(String email, String matkhau) {
		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nhanVien = (NhanVien) session
					.createQuery("from NHANVIEN where email='" + email + "' and matkhau='" + matkhau + "'")
					.getSingleResult();
			if (nhanVien != null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}

	}

}
