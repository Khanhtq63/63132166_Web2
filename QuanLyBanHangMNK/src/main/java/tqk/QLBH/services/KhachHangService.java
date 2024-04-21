package tqk.QLBH.services;

import java.util.List;

import org.springframework.stereotype.Service;

import tqk.QLBH.Models.KhachHang;

@Service
public interface KhachHangService {
	public List<KhachHang> getAllKhachHang();
	public KhachHang getKhachHangByID(String maKH);


}
