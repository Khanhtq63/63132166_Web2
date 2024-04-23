package tqk.QLSV.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tqk.QLSV.Models.SinhVienModel;
import tqk.QLSV.Repositories.SinhVienRepository;

@Service
public class SinhVienServiceImp implements SinhVienService {
	@Autowired SinhVienRepository sinhVienRepository;

	@Override
	public List<SinhVienModel> getAllSinhVien() {
		
		return sinhVienRepository.findAll();
	}

	@Override
	public SinhVienModel getSinhVienID(String maSV) {
		
		return sinhVienRepository.getById(maSV);
	}
	
	

}
