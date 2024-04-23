package tqk.QLSV.Services;

import java.util.List;

import tqk.QLSV.Models.SinhVienModel;

public interface SinhVienService {
	public List<SinhVienModel> getAllSinhVien();
	public SinhVienModel getSinhVienID(String maSV);

}
