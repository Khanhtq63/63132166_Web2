package tqk.QLSV.Services;

import java.util.List;
import java.util.Optional;

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
	public SinhVienModel getSinhVienByID(String maSV) {
		
		Optional <SinhVienModel> opt = sinhVienRepository.findById(maSV);
		if (opt.isPresent()) return opt.get();
		else return null;
	}

	@Override
	public SinhVienModel SaveSinhVien(SinhVienModel sinhvien) {
		return sinhVienRepository.save(sinhvien);
	}

	@Override
	public SinhVienModel UpdateSinhVien(SinhVienModel sinhvien) {
		return sinhVienRepository.save(sinhvien);
	}

	
	
}
