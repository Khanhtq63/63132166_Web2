package tqk.QLBH.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tqk.QLBH.Models.KhachHang;
import tqk.QLBH.repositories.KhachHangRepository;
@Service
public class KhachHangServiceImpl implements KhachHangService {
	
	@Autowired KhachHangRepository khachHangRepository;

	@Override
	public List<KhachHang> getAllKhachHang() {
		
		return khachHangRepository.findAll();
	}

	@Override
	public KhachHang getKhachHangByID(String maKH) {
		
		return khachHangRepository.getById(maKH);
	}
	

}
