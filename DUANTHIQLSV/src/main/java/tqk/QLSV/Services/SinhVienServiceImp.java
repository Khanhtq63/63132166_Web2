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
	
	public SinhVienServiceImp(SinhVienRepository sinhVienRepository) {
		super();
		this.sinhVienRepository = sinhVienRepository;
	}

	@Override
	public SinhVienModel getSinhVienByID(String maSinhVien) {
		
		Optional <SinhVienModel> opt = sinhVienRepository.findById(maSinhVien);
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

	@Override
	public void DeleteStudentByID(String maSinhVien) {
		sinhVienRepository.deleteById(maSinhVien);
	}

	@Override
	public List<SinhVienModel> SearchSinhVienByName(String hoTen) {
		return sinhVienRepository.findByHoTenContainingIgnoreCase(hoTen);
	}
	
	
	

	
	
}
