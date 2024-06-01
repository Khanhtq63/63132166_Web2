package tqk.QLSV.Services;

import java.sql.Blob;
import java.util.List;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import tqk.QLSV.Models.SinhVienModel;

public interface SinhVienService {
	
	public List<SinhVienModel> getAllSinhVien();
	
	public SinhVienModel SaveSinhVien(SinhVienModel sinhvien);
	
	public SinhVienModel getSinhVienByID(String maSinhVien);
	
	public SinhVienModel UpdateSinhVien(SinhVienModel sinhvien);	
	
	void DeleteStudentByID(String maSinhVien);	
	
	Page<SinhVienModel> getSinhVienPage(Pageable pageable);
	
	Page<SinhVienModel> SearchSinhVienByName(String hoTen, Pageable pageable);
	 
	Page<SinhVienModel> SearchSinhVienByMaSV(String maSinhVien, Pageable pageable);
	 
	Page<SinhVienModel> SearchSinhVienByGioiTinh(String gioiTinh, Pageable pageable);
	    
	Page<SinhVienModel> SearchSinhVienByMaLop(String maLop, Pageable pageable);
	
	
	

}
