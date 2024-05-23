package tqk.QLSV.Services;

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
	
	List<SinhVienModel> SearchSinhVienByName(String hoTen);
	
	Page<SinhVienModel> getSinhVienPage(Pageable pageable);
	
	List<SinhVienModel> SearchSinhVienByMaSV(String maSinhVien);

	List<SinhVienModel> SearchSinhVienByGioiTinh(String gioiTinh);

	List<SinhVienModel> SearchSinhVienByMaLop(String maLop);
	

}
